"""
Check that common trackers are not used.
"""

import logging
import requests


def only_allowed_third_parties(url='https://1177.se'):
    """
    Checks HTML for not allowed third parties. For te moment only looks for
    Google Analytics, Google Tag Manager and Adobe Analytics.

    Attribute: 'url' as fully qualified URL, default is 'https://1177.se'
    """

    response = requests.get(url, timeout=20)

    if 'ga.js' in response.text.lower() \
       or 'www.google-analytics.com/analytics.js' in response.text.lower():
        logging.error('Google Analytics is present')
        return False
    if 'gtm.js' in response.text.lower():
        logging.error('Google Tag Manager is present')
        return False
    if '//assets.adobedtm.com/' in response.text.lower():
        logging.error('Adobe Analytics is present')
        return False

    return True

"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(only_allowed_third_parties('http://vgregion.se'))
