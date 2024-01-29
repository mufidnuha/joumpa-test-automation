*** Settings ***
Documentation       Testing joumpa

Resource            ./../Resources/Common.robot
Resource            ./../Resources/Footer.robot
Resource            ./../Resources/PO/HomePage.robot
Resource            ./../Resources/PO/ProductsPage.robot
Resource            ./../Resources/PO/OurLocationPage.robot
Resource            ./../Resources/PO/ManageBookingPage.robot
Resource            ./../Resources/PO/ContactUsPage.robot
Resource            ./../Resources/PO/LoginPage.robot
Resource            ./../Resources/PO/MeetAndGreetPage.robot
Resource            ./../Resources/PO/TransferPage.robot
Resource            ./../Resources/PO/ReservationFlightPage.robot
Resource            ./../Resources/PO/TermsAndConditionPage.robot
Resource            ./../Resources/PO/PrivacyPolicyPage.robot

Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test
# robot -d results Tests/ChangeLanguageTest.robot


*** Test Cases ***
Change language to Indonesian
    [Documentation]    TC-UR005-001
    [Tags]    ts-ur005-011    ur-pub-005    change language    web public
    User located in "Home" page and language in English
    Click Element    ${HEADER_LANGUAGE_ACTIVE}
    Click Button    ${HEADER_LANGUAGE_ID_BUTTON}
    All Page Displayed in Indonesian

Change language to English
    [Documentation]    TC-UR005-001
    [Tags]    ts-ur005-012    ur-pub-005    change language    web public
    User located in "Home" page and language in Indonesian
    Click Element    ${HEADER_LANGUAGE_ACTIVE}
    Click Button    ${HEADER_LANGUAGE_EN_BUTTON}
    All Page Displayed in English
