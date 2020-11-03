"""
Validates HTML
"""
import logging
import json
import requests


def check_w3c_valid(url):
    """
    Gets the HTML from an url and posts that URL to the w3c Validator
    """

    # Get our markup
    response = requests.get(url, timeout=20)

    html = response.text.encode('utf-8')

    # Post to w3c
    w3c_url = 'https://validator.w3.org/nu/'
    headers = {'user-agent': 'Mozilla/5.0 (compatible; Googlebot/2.1; \
               +http://www.google.com/bot.html)',
               'Content-type': 'text/html; charset=utf-8'}
    params = {'out': 'json'}
    w3c_response = requests.post(url=w3c_url,
                                 headers=headers,
                                 data=html,
                                 params=params)
    w3c_response = json.loads(w3c_response.text)

    errors_and_warnings = 0

    for message in w3c_response['messages']:
        if message.get('type') == 'error':
            errors_and_warnings += 1
            logging.error('on line %s: %s',
                          message['lastLine'],
                          message['message'])
        else:
            errors_and_warnings += 1
            logging.warning('on line %s: %s',
                            message['lastLine'],
                            message['message'])

    return errors_and_warnings == 0


"""
If file is executed on itself then call a definition,
mostly for testing purposes (sorry Båstad)
"""
if __name__ == '__main__':
    print(check_w3c_valid('http://www.bastad.se/'))
