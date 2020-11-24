*** Settings ***
Documentation
Library  OperatingSystem
Library  SeleniumLibrary

*** Keywords ***

Test Subscribe

    # [Documentation] Subscribes to newsletter on page

    # Get username and password for email account
    ${CredentialFileContents}=    Get File    ../email-credentials.json

    ${credentials}=         Evaluate            json.loads("""${CredentialFileContents}""")    json
    ${username}=    Set Variable        ${credentials['username']}
    ${password}=    Set Variable        ${credentials['password']}


    Input Text              id:EmailAdress      ${username}
    Click Element           css:[name="ButtonAction"][value="Prenumerera"]
    Sleep                                   1s
    Go To                        https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Sleep                                   1s
    Input Text                   name:identifier             ${username}
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Sleep                        3s
    Input Text                   name:password               ${password}
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Wait Until Page Contains     Prenumerera på nyhetsbrev

Test Unsubscribe

    # [Documentation] Unsubscribes to newsletter on page

    # Get username and password for email account
    ${CredentialFileContents}=    Get File    ../email-credentials.json

    ${credentials}=         Evaluate            json.loads("""${CredentialFileContents}""")    json
    ${username}=    Set Variable        ${credentials['username']}
    ${password}=    Set Variable        ${credentials['password']}

    Input Text              id:EmailAdress      ${username}
    Click Element           css:[name="ButtonAction"][value="Avprenumerera"]
    Sleep                                   1s
    Go To                        https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Input Text                   name:identifier             ${username}
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Sleep                        3s
    Input Text                   name:password               ${password}
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Wait Until Page Contains     Avprenumerera på nyhetsbrev