*** Settings ***
Documentation
Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***

Verify Phonenumber Is Visible

    Wait Until Page Contains    010-441 00 00

Test Contact Message

  #  [Documentation] Tests "Kontakta Mig"

      # Get username and password for email account
    ${CredentialFileContents}=    Get File    ../email-credentials.json

    ${credentials}=         Evaluate            json.loads("""${CredentialFileContents}""")    json
    ${username}=    Set Variable        ${credentials['username']}
    ${password}=    Set Variable        ${credentials['password']}

    Input Text                  css:#namn                   Testrobot
    Input Text                  css:#epost                  ${username}
    Input Text                  css:#fraga                  Testmail
    Input Text                  css:#CapthcaQuestion        4
    Click Element               name:XFormsSubmit_ybNPBoUY03n4AhQramlZUl7tjg8B8hlyI9EGjjv64
  #  Go To                        https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
  #  Input Text                   name:identifier             ${username}
  #  Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
  #  Sleep                        3s
  #  Input Text                   name:password               ${password}
  #  Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button




