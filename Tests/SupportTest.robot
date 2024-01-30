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
TC-M04-001
    [Documentation]    Verify navigation to "Contact Us" page from "Contact Us" menu in header
    [Tags]    ts-m04-010    urd-pub-004    support    web public
    User located in "Home" page
    Click Element    ${HEADER_CONTACT_US}
    ContactUsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M04-002
    [Documentation]    Verify navigation to "Contact Us" page from "Contact Us" menu in footer
    [Tags]    ts-m04-010    urd-pub-004    support    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_CONTACT_US}
    Click Element    ${FOOTER_CONTACT_US}
    ContactUsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M04-003
    [Documentation]    Verify to Gapura's hotline whatsapp from whatsapp floating button
    [Tags]    ts-m04-010    m-pub-04    support    web public
    User located in "Home" page
    Click Element    ${WHATSAPP_FLOATING_BUTTON}
    Switch Window    NEW
    Location Should Be    ${WHATSAPP_HOTLINE_URL}

TC-M04-004
    [Documentation]    Verify navigation to "Contact Us" page from "Go To Support" button in "Reservation" page
    [Tags]    ts-m04-010    urd-pub-004    support    web public
    User located in "Reservation" Page
    Scroll Element Into View    ${FOOTER_SUPPORT_BUTTON}
    Click Button    ${FOOTER_SUPPORT_BUTTON}
    ContactUsPage.Display Correctly    ${LANGUAGE_DEFAULT}
