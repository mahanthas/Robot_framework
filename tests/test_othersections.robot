*** Comments ***
This is a comprehensive example showing all section types

*** Metadata ***
Suite       Login Functionality
Priority    High
Automated   Yes

*** Settings ***
Documentation     Tests for login functionality
Resource         resources/common.robot

*** Library ***
SeleniumLibrary

*** Resource ***
variables/login_vars.robot

*** Variables ***
${URL}          https://example.com
${BROWSER}      Chrome

*** Test Setup ***
Open Browser To Login Page

*** Test Teardown ***
Close Browser

*** Suite Setup ***
Log    Starting login test suite
Set Global Timeout    30s

*** Suite Teardown ***
Log    Login test suite completed
Clear All Cookies

*** Default Tags ***
login    web

*** Test Cases ***
Valid Login
    [Tags]    smoke
    Enter Credentials    admin    secret
    Submit Login Form
    Welcome Page Should Be Open

Invalid Login
    Enter Credentials    wrong    wrong
    Submit Login Form
    Error Message Should Be Visible

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Login Page

*** Tasks ***
Daily Login Check
    Verify Login Page Accessible
    Take Screenshot    login_page.png