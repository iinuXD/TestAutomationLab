*** Settings ***
Resource    resourse.robot

*** Test Cases ***
Successful Registration With Valid Data
    [Documentation]    Test registration with all valid data
    Open Registration Page
    Enter Registration Details    John    Doe    TechCorp    john@example.com    9876543210
    Click Register Button
    Sleep    2s
    Page Should Contain    Success
    Close Application

Registration With Missing First Name
    [Documentation]    Test registration with missing first name
    Open Registration Page
    Enter Registration Details    ${EMPTY}    Doe    TechCorp    john@example.com    9876543210
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your name
    Close Application

Registration With Missing Last Name
    [Documentation]    Test registration with missing last name
    Open Registration Page
    Enter Registration Details    John    ${EMPTY}    TechCorp    john@example.com    9876543210
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter your name
    Close Application

Registration With Missing Email
    [Documentation]    Test registration with missing email
    Open Registration Page
    Enter Registration Details    John    Doe    TechCorp    ${EMPTY}    9876543210
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter valid Email ID
    Close Application

Registration With Missing Phone
    [Documentation]    Test registration with missing phone number
    Open Registration Page
    Enter Registration Details    John    Doe    TechCorp    john@example.com    ${EMPTY}
    Click Register Button
    Sleep    1s
    Page Should Contain    Please enter valid phone number
    Close Application