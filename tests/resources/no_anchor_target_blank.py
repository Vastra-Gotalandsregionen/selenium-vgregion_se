import requests
from bs4 import BeautifulSoup

def no_anchor_target_blank(url='https://1177.se'):
    """
    Checks HTML for links which opens '_blank' without the following attributes:
    * rel="noopener"
    * rel="noreferrer"
    
    Attribute: 'url' as fully qualified URL, default is 'https://1177.se'
    """
    r = requests.get(url, timeout=20)
    soup = BeautifulSoup(r.text, 'html.parser')
    
    list_of_links = soup.find_all('a')
    
    
    has_target_blank = False
    is_compliant = True
    mess = ''
    
    for link in list_of_links:        
        
        link_has_target_attribute = link.has_attr('target')
        if link_has_target_attribute and link['target'].lower() == '_blank':
            #print(type(link))
            has_target_blank = True
            mess += "Link with 'target' attribute set to _blank. "
            
            if link.has_attr('rel') is False:
                # print(link['rel'])
                is_compliant = False
                mess += "The link do not set 'rel' attribute at all."
            elif link.has_attr('rel') and (link['rel'] != 'noopener' and link['rel'] != 'noreferrer'):
                is_compliant = False
                mess += "The link has the 'rel' attribute, but do not specify 'noopener' or 'noreferrer'."
            else:
                mess += "The link\'s rel' attribute is compliant."
        
    return is_compliant

"""
If file is executed on itself then call a definition, mostly for testing purposes
"""
if __name__ == '__main__':
	print(no_anchor_target_blank('https://vgregion.se'))
