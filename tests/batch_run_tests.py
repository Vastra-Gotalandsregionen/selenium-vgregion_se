"""
Run all or some tests
"""
import glob
import robot


def batch_run_tests(files=None):
    """
    Takes a list as an input listing files in the directory.
    If none given it runs all .robot files instead.
    """

    if files is not None:
        files = glob.glob("*.robot")

    log_file = open('batch_log_output.txt', 'w')

    for file in files:
        print(file)
        # Things done for each file
        # robot.run(file + ' -d logs -o ' + file + ' -l' + file)
        robot.run(file, stdout=log_file)


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
