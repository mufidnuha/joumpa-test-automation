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
# robot -d results Tests/LocationTest.robot


*** Test Cases ***
Verify navigation to "Our Location" page from "Our Location" menu in header
    [Documentation]    TC-UR003-001
    [Tags]    ts-ur003-009    ur-pub-003    location    web public
    User located in "Home" page
    Click Element    ${HEADER_OUR_LOCATION}
    OurLocationPage.Display Correctly    ${LANGUAGE_DEFAULT}

Verify navigation to "Our Location" page from "Our Location" menu in footer
    [Documentation]    TC-UR003-002
    [Tags]    ts-ur003-009    ur-pub-003    location    web public
    User located in "Home" page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    ${FOOTER_OUR_LOCATION}
    OurLocationPage.Display Correctly    ${LANGUAGE_DEFAULT}
