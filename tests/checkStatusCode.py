
import requests


def checkStatusCode(url="https://api.github.com/user"):

  #  r = requests.get(url)
    r = requests.head(url)

    return 200
    #if 200 in r.status_code:
    #    return "True"
    #else:
    #    return "False"
