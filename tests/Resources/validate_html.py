"""
Validates HTML
"""
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
    w3c_response = requests.post(url=w3c_url, headers=headers, data=html)
    return w3c_response


"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(check_w3c_valid('https://www.saffle.se/').text)
