*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***



Test Contact Message

    Input Text                  css:#namn                   Testrobot
    Input Text                  css:#epost                  test20014565@gmail.com
    Input Text                  css:#fraga                  Testmail
    Input Text                  css:#CapthcaQuestion        4
    Click Element               name:XFormsSubmit_ybNPBoUY03n4AhQramlZUl7tjg8B8hlyI9EGjjv64
  #  Go To                       https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
  #  Input Text                   name:identifier             test20014565@gmail.com
  #  Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button
  #  Sleep                        3s
  #  Input Text                   name:password               Vgregiontest
  #  Click Element                xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button




