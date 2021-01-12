"""
Run all or some tests
"""

import argparse
import getopt
import glob
import os
import sys

import robot
from robot import rebot
from pathlib import Path


def parse_argument():
    """
    Parses optional arguments for the location of the .robot file and generated output files.
    This makes it possible to customise the paths for different environments.
    """
    currentDir = str(get_current_dir())

    parser = argparse.ArgumentParser(description='Runs .robot files and creates output that can be used by Azure DevOps Pipelines')
    parser.add_argument('--destdir', dest='destdir', type=str, default=currentDir, help='Absolut path to directory that contains the .robot files')
    parser.add_argument('--outputdir', dest='outputdir', type=str, default=currentDir, help='Absolut path to the output directory for the test results')
    # Return dictionary of args
    return vars(parser.parse_args())

def get_current_dir():
    """
    Get the directory of the executed Pyhton file (i.e. this file)
    """
    currentPath = Path(__file__).resolve()  # Resolve to get rid of any symlinks
    currentDir = currentPath.parent
    
    return currentDir


def batch_run_tests(files=None):
    """
    Takes a list as an input listing files in the directory.
    If none given it runs all .robot files instead.
    """
    arguments = parse_argument()

    robotFilesDir = arguments['destdir']
    outputLogDir = arguments['outputdir']

    os.chdir(robotFilesDir)

    if files is None:
        files = glob.glob("*.robot")

    log_file = open('batch_log_output.txt', 'w')

    for index, file in enumerate(files):
        print(file)

        outputFileName = 'output_' +  file.replace(".robot", "")

        # Things done for each file
        # robot.run(file + ' -d logs -o ' + file + ' -l' + file)
        robot.run(file, output=outputFileName, stdout=log_file)

        # Create XUnit output with a uniqe name for each test
        rebot(outputLogDir + '\\' + outputFileName + '.xml', xunit='xunit' + outputFileName + '.xml')

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
