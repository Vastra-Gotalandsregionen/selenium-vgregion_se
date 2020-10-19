import requests

def only_allowed_third_parties(url='https://1177.se'):
    """
    Checks HTML for not allowed third parties. For te moment only looks for Google Analytics, Google Tag Manager and Adobe Analytics.
    
    Attribute: 'url' as fully qualified URL, default is 'https://1177.se'
    """
    r = requests.get(url, timeout=20)
    
    if 'ga.js' in r.text.lower() or 'www.google-analytics.com/analytics.js' in r.text.lower(): # Google Analytics
        return False
    elif 'gtm.js' in r.text.lower(): # Google Tag Manager
        return False
    elif '//assets.adobedtm.com/' in r.text.lower(): # Adobe Analytics
        return False
    
    return True

"""
If file is executed on itself then call a definition, mostly for testing purposes
"""
if __name__ == '__main__':
	print(only_allowed_third_parties('https://vgregion.se'))