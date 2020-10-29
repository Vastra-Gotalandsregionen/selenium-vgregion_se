import requests


def check_status_code(url="https://api.github.com/user"):

    r = requests.get(url)
    status_code = str(r.status_code)

    if status_code.startswith("2"):
        return True
    else:
        return False
