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

Register Success No Organization Info
    [Documentation]    Test registration with no organization
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    Sodsai    ${EMPTY}    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Success
    Close Application

Register With No First Name
    [Documentation]    Test registration with no first name
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    ${EMPTY}    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter your first name!!
    Close Application

Register With No Last Name
    [Documentation]    Test registration with no last name
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    ${EMPTY}    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter your last name!!
    Close Application

Register With No First Name And Last Name
    [Documentation]    Test registration with no first name and last name
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    ${EMPTY}    ${EMPTY}    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter your name!!
    Close Application

Register With No Email
    [Documentation]    Test registration with no email
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    ${EMPTY}    091-001-1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter your email!!
    Close Application

Register With No Phone Number
    [Documentation]    Test registration with no phone number
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    ${EMPTY}
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter your phone number!!
    Close Application

Register With Invalid Phone Number
    [Documentation]    Test registration with invalid phone number
    Open Registration Page
    Sleep    10s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    1234
    Click Register Button
    Sleep    10s
    Page Should Contain    Please enter a valid phone number!!
    Close Application

