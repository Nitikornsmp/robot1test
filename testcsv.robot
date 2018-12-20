*** Settings ***
Resource    D:/workspace/merchantB2B/keywords/feature/login_keyword.robot
Test Template    Login to MerchantB2B
Library    python_library/common/csvlib.py
*** Test Cases ***
Test001
    Prepare data
    :FOR  ${user}   in   @{all users}
    \    @{user}[0]     @{user}[1]

*** Keywords ***
Prepare data
    ${all users}=    read_csv_file    testdata/component/admin_boarding/invalidcredentail.csv
    Set Test Variable   ${all users}     ${all users}



