"""
Run all or some tests
"""
import glob
import robot

files = glob.glob("*.robot")

files = ['hitta_dokument.robot',
         'hitta_vgregion.robot',
         'organisationssök.robot',
         'search_page_listing_block.robot',
         'sidlistningsblock.robot',
         'sök_jobb_VGR.robot']

logFile = open('batch_log_output.txt', 'w')

for file in files:
    print(file)
    # Things done for each file
    # robot.run(file + ' -d logs -o ' + file + ' -l' + file)
    robot.run(file, stdout=logFile)
