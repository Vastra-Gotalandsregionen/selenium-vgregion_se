"""
Find, sitemap from robots on a given url, and return a list of pages
"""

import logging
import re
import requests
import xml.etree.cElementTree as ET


def read_sitemap(url='https://vgregion.se', priority_threshold=0.8):
    """
    looks for a sitemap in robots.txt, get and parse that sitemap,
    Return a list of URLs with those that have a priority higher or
    equal to the variable priority_threshold.
    """

    robots_response = requests.get(url + '/robots.txt', timeout=20)

    # Find whatever follows "sitemap: "
    sitemap_url = re.search('(?<=[Ss]itemap: )(.*)', robots_response.text)

    sitemap_response = requests.get(sitemap_url.group(0), timeout=20)

    sitemap_xml = ET.fromstring(sitemap_response.text)

    urls = []

    # Gets the "url"-branch
    for child in sitemap_xml:
        location = child[0]

        priority = float(child[3].text)

        if priority > priority_threshold:
            urls.append(location.text)

    return urls

"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(read_sitemap('https://vgregion.se'))
