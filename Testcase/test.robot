*** Settings ***
Resource    resourse.robot

*** Test Cases ***
Successful Registration With Valid Data
    [Documentation]    Test registration with all valid data
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Success
    Close Application

