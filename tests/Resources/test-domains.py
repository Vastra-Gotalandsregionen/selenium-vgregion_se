"""
See if our domains work
"""
import json
from checkStatusCode import check_status_code


def test_domains(file_path="../../domains.json"):
    """
    Reads a list of domains and see if they respond
    """

    # Read file
    with open(file_path, 'r') as domain_file:
        domains_json = domain_file.read()

    # Parse file
    domains = json.loads(domains_json)

    results = {}

    for domain in domains:
        status = check_status_code(domain)
        results[domain] = status

    return results

"""
If file is executed on itself then call a definition,
mostly for testing purposes
"""
if __name__ == '__main__':
    print(test_domains(file_path="../../domains.json"))
