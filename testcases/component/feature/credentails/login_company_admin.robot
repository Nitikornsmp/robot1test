*** Settings ***
Resource    D:/workspace/merchantB2B/keywords/feature/login_keyword.robot
Test Template    Login to MerchantB2B

*** Test Cases ***                             username            password
Success to Login as Platform admin     admin@manaosoftware.com     123456789