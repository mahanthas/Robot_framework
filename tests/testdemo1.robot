***Settings***
Documentation   To validate the login form
Library         SeleniumLibrary

***Test Cases***
#here we can directly write the selenium keywords but it will not be good
Validate Successful login
    open the browser with the payment url
    fill the login form
    # wait until checks and display error message
    # verify error message is correct

***Keywords***
open the browser with the payment url
    Create Webdriver    Edge
    Go To   https://rahulshettyacademy.com/loginpagePractise/

fill the login form
    Input Text  id:username     rahulshettyacademy
    Input Text  id:password     12345678
    Click Button    signInBtn
