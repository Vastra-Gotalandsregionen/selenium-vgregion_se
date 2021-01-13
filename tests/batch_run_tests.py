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
    Parses optional arguments for the location of the .robot file and\
    generated output files.
    This makes it possible to customise the paths for different environments.
    """
    current_dir = str(get_current_dir())

    parser = argparse.ArgumentParser(description='Runs .robot files and\
        creates output that can be used by Azure DevOps Pipelines')
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

    os.chdir(robot_files_dir)

    if files is None:
        files = glob.glob("*.robot")

    log_file = open('batch_log_output.txt', 'w')

    for index, file in enumerate(files):
        print(file)

        file_name = file.replace(".robot", "")
        output_file_name = 'output_' + file_name

        # Run tests and create logs and reports with a uniqe name for each test
        robot.run(file,
                  output=output_file_name,
                  log='log_' + file_name,
                  report='report_' + file_name,
                  stdout=log_file)

        # Create output with XUnit format
        rebot(output_log_dir
              + '\\'
              + output_file_name
              + '.xml',
              xunit='xunitoutput_'
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
    InputFiles = ['hitta_dokument.robot',
                  'hitta_vgregion.robot',
                  'organisationssök.robot',
                  'search_page_listing_block.robot',
                  'sidlistningsblock.robot',
                  'sök_jobb_VGR.robot']
    print(batch_run_tests(InputFiles))
