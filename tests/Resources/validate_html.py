import requests

def check_w3c_valid(url):
    # Get our markup
    r = requests.get(url, timeout=20)

    html = r.text.encode('utf-8')

    # Post to w3c
    w3cURL = 'https://validator.w3.org/nu/'
    headers = {'user-agent': 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'Content-type': 'text/html; charset=utf-8'}
    w3cResponse = requests.post(url = w3cURL, headers=headers, data=html)
    return w3cResponse

"""
If file is executed on itself then call a definition, mostly for testing purposes
"""
if __name__ == '__main__':
    print(check_w3c_valid('https://www.saffle.se/').text)
