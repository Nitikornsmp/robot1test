*** Settings ***
Library    DatabaseLibrary

*** Variables ***


*** Test Cases ***
TestConnectDB
    DatabaseLibrary.Connect To Database  pyodbc     NopTest   rbtest1  Manao100%   localhost\\SQLEXPRESS    1433
    # @{results}      DatabaseLibrary.Query       select*from dbo.customer where Id='1'
    # Log Many        ${results} 
    Check If Exists In Database     select*from dbo.customer where Id='1'