# selenium-vgregion se #

## Getting started ##

1. [Install Python](https://www.python.org/downloads/)
2. [Install pip](https://pip.pypa.io/en/stable/installing/)
3. Install [robotframework](https://pypi.org/project/robotframework/) with pip (`pip install robotframework`).
4. Install [selenium](https://pypi.org/project/selenium/) with pip.
5. Install [robotframework-seleniumlibrary](https://pypi.org/project/robotframework-seleniumlibrary/) with pip.
5. Install [robotframework-selenium2library](https://pypi.org/project/robotframework-selenium2library/) with pip.
7. Install [requests](https://pypi.org/project/requests/) with pip.
8. Install [beautifulsoup4](https://pypi.org/project/beautifulsoup4/) with pip
8. Get [chromedriver](http://chromedriver.chromium.org/downloads) matching your Chrome version.

## How to run tests from terminal ##

1. run `python3 -m robot -d my-folder my-test.robot`
(where `my-folder` is a folder to save test results in, and `my-test.robot` is the test to run)

Here's an excellent guide: [How to execute robot framework tests](https://gist.github.com/GLMeece/c26aae72fb1f8aa5192065793aab3477)

## How to run tests from IDE ##

### Sublime text ###

1. Make sure to have the [Python 3-package](https://packagecontrol.io/packages/Python%203)
2. Navigate to the `.robot` file you want to run.
3. Press `Ctrl`/`Cmd` + `B` to run.

## Contribute ##

### Python guidelines ###

- Use a linter and follow [pep 8 code standard](https://www.python.org/dev/peps/pep-0008/).

## License ##

This code is released under the MIT license.

## Istalling Pycharm ##

1. Download Pycharm and install (https://www.jetbrains.com/pycharm/download/#section=windows)
2. Öppna programmet, klicka configure
3. Klicka på "Plugins" och skriv Intellibot i sökrutan
4. Väl plugin Intellibot @SeleniumLibrary Patched och installera
5. Istallera även plugins: Robot FrameWork Support, Run Robot FrameWork TestCase
6. Starta om Pycharm
