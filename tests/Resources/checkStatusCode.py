"""
Check if url returns a http status code in the 200 range.
"""
import logging
import requests


def check_status_code(url="https://api.github.com/user"):
    """
    Checks the HTTP error code for given URL. Loggs error on 400 and
    500 series codes
    """

    try:
        response = requests.get(url, timeout=5)
    except Timeout:
        logging.error("Connection timed out")
        return False

    if not response:
        status_code = str(response.status_code)
        logging.error('%s responds: %s %s', url, status_code, response.reason)

    return response


"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(check_status_code('http://www.example.com/'))
