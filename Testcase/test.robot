*** Settings ***
Resource    resourse.robot

*** Test Cases ***
Register Success
    [Documentation]    Test registration with all valid data
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Success
    Close Application

Register Success No Organization Info
    [Documentation]    Test registration with no organization
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    Sodsai    ${EMPTY}    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Success
    Close Application

Empty First Name
    [Documentation]    Test registration with no first name
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    ${EMPTY}    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your first name!!
    Close Application

Empty Last Name
    [Documentation]    Test registration with no last name
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    ${EMPTY}    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your last name!!
    Close Application

Empty First Name and Last Name
    [Documentation]    Test registration with no first name and last name
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    ${EMPTY}    ${EMPTY}    CS KKU    somyod@kkumail.com    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your name!!
    Close Application

Empty Email
    [Documentation]    Test registration with no email
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    ${EMPTY}    091-001-1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your email!!
    Close Application

Empty Phone Number
    [Documentation]    Test registration with no phone number
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    ${EMPTY}
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your phone number!!
    Close Application

Invalid Phone Number
    [Documentation]    Test registration with invalid phone number
    Open Registration Page
    Sleep    1s 
    Enter Registration Details    Somyod    Sodsai    CS KKU    somyod@kkumail.com    1234
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
    Close Application

