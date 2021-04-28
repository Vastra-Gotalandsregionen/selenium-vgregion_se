"""
Run all or some tests
"""

import argparse
import glob
import os
from pathlib import Path
import robot
from robot import rebot


def parse_argument():
    """
    Parses optional arguments that's then gets passed to the robot files.
    This makes it possible to customise the paths for different environments.
    """
    current_dir = str(get_current_dir())

    parser = argparse.ArgumentParser(description='Runs .robot files and\
        creates output that can be used by Azure DevOps Pipelines')
    parser.add_argument('--files',
                        dest='files',
                        type=str,
                        default=None,
                        help='Array of .robot files to run')
    parser.add_argument('--destdir',
                        dest='destdir',
                        type=str,
                        default=current_dir,
                        help='Absolut path to directory that contains the\
                              .robot files')
    parser.add_argument('--outputdir',
                        dest='outputdir',
                        type=str,
                        default=current_dir,
                        help='Absolute path to the output directory for\
                              the test results')
    parser.add_argument('--variables',
                        dest='variables',
                        type=str,
                        # The variables argument cannot be empty or else we´re gonna get an exception.
                        # This is just a default random variable that's not used by any test.
                        default='DEFAULTVALUE:none',
                        help='Override variables created in test case files.\
                              To override which site to run the test cases on, use:\
                              "NARHALSAN_DOMAIN:site1.vgregion.se,\
                              VGR_DOMAIN:site2.vgregion.se,\
                              FTV_DOMAIN:site3.vgregion.se" etc.')
    # Return dictionary of args
    return vars(parser.parse_args())


def get_current_dir():
    """
    Get the directory of the executed Pyhton file (i.e. this file)
    """

    # Resolve to get rid of any symlinks
    current_path = Path(__file__).resolve()
    current_dir = current_path.parent

    return current_dir


def batch_run_tests(files=None):
    """
    Takes a list as an input listing files in the directory.
    If none given it runs all .robot files instead.
    """
    arguments = parse_argument()

    robot_files_dir = arguments['destdir']
    output_log_dir = arguments['outputdir']
    variables = arguments['variables']

    if not output_log_dir.endswith('\\'):
        output_log_dir += '\\'

    if isinstance(variables, str):
        variables = variables.split(",")

    os.chdir(robot_files_dir)

    # This is a bit backwards and not too clean.
    # TODO: clean up.
    if files is None:
        files = arguments['files']

        if isinstance(files, str):
            files = files.split(",")

    if files is None:
        files = glob.glob("*.robot")

    log_file = open(output_log_dir +'batch_log_output.txt', 'w')

    for index, file in enumerate(files):
        print(file)

        file_name = file.replace(".robot", "")
        output_file_name = 'output_' + file_name

        # Run tests and create logs and reports with a uniqe name for each test
        robot.run(file,
                  output=output_log_dir + output_file_name,
                  log=output_log_dir + 'log_' + file_name,
                  report=output_log_dir + 'report_' + file_name,
                  stdout=log_file,
                  variable=variables)

        # Create output with XUnit format
        rebot(output_log_dir
              + output_file_name
              + '.xml',
              xunit=output_log_dir 
              + 'xunitoutput_'
              + file_name
              + '.xml')

        # To limit amount of tests (change to positive number)
        if index == -1:
            break


"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(batch_run_tests())
