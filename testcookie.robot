*** Settings ***
Library     Selenium2Library

*** Variables ***
${value_coo}    CfDJ8Nx0G8y8y61OkkBM2GszlP9t5blju7Aj6AxoiQryQSa8uFAvYfTkF3M4lm4SccLSLzYlja2pyI58ecDMT2cOPjrFSvI4Lg4WjeWr-i5y3nyRRan-WSNTH1ogG_C4NBw5VwD0r-fw8yV8iVdLvwr0_ZwGARweZbN6feRLnft8w90hKnc4ySu1rcLuC7pnvGuMym2mqLMjGIga_TnTzEdEwr4wAB--_wRSgoCpMDKgliL3a4Ldr9LvXX_B6FBaeX_aygbuQDKkgyIalj-CXOvYpffpEXokZxAVo6k4sF64dEI1kIUNlAdfnVvUuRDcmjimyD6hjMKwcebmuohbJlBx_ix5H8g5-g1T6Lcf3CWpYa3J6FEiitqG3xvSsnPAPedQCXoUcFlbSWheYOFYqBwn5D15wh_dqO00Y7QNWuhOd8FqbD9Bvy1lGh282nkYvjheR98PtwtYWCTekvmtjAu9d6HlW-QAFDpapejzQU5UOw1N09I07ku_tuiJTif2zfkSc36EnS8M9CFzW5DxQaeJ6EMO-QjU02GKfZxD8J6eIDf7ug330kaUaPDglmILAlCO6No6KFGpt7A7EsEdBKBVQSc


*** Test Cases ***
testcookie
    Open Browser    http://ec2-3-0-61-103.ap-southeast-1.compute.amazonaws.com/     Chrome
    Maximize Browser Window
    Add Cookie    .Nop.Authentication    ${value_coo}    /    ec2-3-0-61-103.ap-southeast-1.compute.amazonaws.com    ${EMPTY}    2018-12-31
    ${Cookie}=  Get Cookie   .Nop.Authentication
    Log    ${Cookie}
    Go To    http://ec2-3-0-61-103.ap-southeast-1.compute.amazonaws.com/Admin
    Sleep    5s