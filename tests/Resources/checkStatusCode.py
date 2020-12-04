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

    response = requests.get(url)
    status_code = str(response.status_code)

    if status_code.startswith("4") or status_code.startswith("5"):
        logging.error('%s responds: %s %s', url, status_code, response.reason)

    return status_code.startswith("2")


"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(check_status_code('http://www.example.com/'))
