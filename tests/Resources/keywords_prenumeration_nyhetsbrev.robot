*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Test Subscribe

    Input Text              id:EmailAdress      test20014565@gmail.com
    Click Element           css:[name="ButtonAction"][value="Prenumerera"]
    Go To                        https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Input Text                   name:identifier             test20014565@gmail.com
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Sleep                        3s
    Input Text                   name:password               Vgregiontest
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Wait Until Page Contains     Prenumerera på nyhetsbrev

Test Unsubscribe

    Input Text              id:EmailAdress      test20014565@gmail.com
    Click Element           css:[name="ButtonAction"][value="Avprenumerera"]
    Go To                        https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Input Text                   name:identifier             test20014565@gmail.com
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Sleep                        3s
    Input Text                   name:password               Vgregiontest
    Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
    Wait Until Page Contains     Avprenumerera på nyhetsbrev