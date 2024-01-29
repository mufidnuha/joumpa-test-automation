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
# robot -d results Tests/SupportTest.robot


*** Test Cases ***
Verify navigation to "Contact Us" page from "Contact Us" menu in header
    [Documentation]    TC-UR004-001
    [Tags]    ts-ur004-010    urd-pub-004    support    web public
    User located in "Home" page
    Click Element    ${HEADER_CONTACT_US}
    ContactUsPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Contact Us" page from "Contact Us" menu in footer
    [Documentation]    TC-UR004-002
    [Tags]    ts-ur004-010    urd-pub-004    support    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_CONTACT_US}
    Click Element    ${FOOTER_CONTACT_US}
    ContactUsPage.Display Correctly    ${LANGUAGE}

Verify to Gapura's hotline whatsapp from whatsapp floating button
    [Documentation]    TC-UR004-003
    [Tags]    ts-ur004-010    urd-pub-004    support    web public
    User located in "Home" page
    Click Element    ${WHATSAPP_FLOATING_BUTTON}
    Switch Window    NEW
    Location Should Be    ${WHATSAPP_HOTLINE_URL}

Verify navigation to "Contact Us" page from "Go To Support" button in "Reservation" page
    [Documentation]    TC-UR004-004
    [Tags]    ts-ur004-010    urd-pub-004    support    web public
    User located in "Reservation" Page
    Scroll Element Into View    ${FOOTER_SUPPORT_BUTTON}
    Click Button    ${FOOTER_SUPPORT_BUTTON}
    ContactUsPage.Display Correctly    ${LANGUAGE}
