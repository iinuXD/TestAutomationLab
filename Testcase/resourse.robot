*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}         Chrome
${REGISTRATION_URL}    http://localhost:7272/Registration.html
${FIRSTNAME_ID}    firstname
${LASTNAME_ID}     lastname
${ORGANIZATION_ID}    organization
${EMAIL_ID}        email
${PHONE_ID}        phone
${REGISTER_BUTTON_ID}    registerButton

*** Keywords ***
Open Registration Page
    Open Browser    ${REGISTRATION_URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    Close Browser

Enter Registration Details
    [Arguments]    ${firstname}    ${lastname}    ${organization}    ${email}    ${phone}
    Input Text    id=${FIRSTNAME_ID}    ${firstname}
    Input Text    id=${LASTNAME_ID}    ${lastname}
    Input Text    id=${ORGANIZATION_ID}    ${organization}
    Input Text    id=${EMAIL_ID}    ${email}
    Input Text    id=${PHONE_ID}    ${phone}

Click Register Button
    Click Element    id=${REGISTER_BUTTON_ID}

Verify Page Title Contains
    [Arguments]    ${title}
    Title Should Be    ${title}

Get Error Message
    ${error}=    Get Text    id=errors
    Return    ${error}
