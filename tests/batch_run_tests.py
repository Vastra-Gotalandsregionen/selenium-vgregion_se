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


def parse_argument():
        parser = argparse.ArgumentParser(description='Runs .robot files and creates output that can be used by Azure DevOps Pipelines')
        parser.add_argument('--destdir', dest='destdir', required=True, help='Location of the .robot files that contains Selenium tests')
        parser.add_argument('--outputdir', dest='outputdir', required=True, help='Output folder for the test results')
        # return dictionary of args
        return vars(parser.parse_args())


def batch_run_tests(files=None):
    """
    Takes a list as an input listing files in the directory.
    If none given it runs all .robot files instead.
    """

    arguments = parse_argument()
    seleniumDestDir = arguments['destdir']
    outputLogDir = arguments['outputdir']
    
    os.chdir(seleniumDestDir)  

    if files is None:
        files = glob.glob("*.robot")

    log_file = open('batch_log_output.txt', 'w')

    for index, file in enumerate(files):
        print(file)

        outputFileName = 'output_' +  file.replace(".robot", "")

        # Things done for each file
        # robot.run(file + ' -d logs -o ' + file + ' -l' + file)
        robot.run(file, output=outputFileName, stdout=log_file)

        # Create XUnit output
        rebot(outputLogDir + outputFileName + '.xml', xunit='xunit' + outputFileName + '.xml')

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
