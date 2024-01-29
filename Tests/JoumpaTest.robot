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
# robot -d results tests/joumpa_ui.robot


*** Variables ***
${COLOR_IS_SELECTED} =      rgb(236, 245, 235)
${MAG_INTERNATIONAL} =      international
${MAG_DOMESTIC} =           domestic


*** Test Cases ***
Verify navigation to "Manage Booking" Page from "Manage Booking" Menu
    [Tags]    tc-pub-005    ts-pub-001    urd-pub-000    header    web public
    User located in "Home" page
    Click Element    ${HEADER_MANAGE_BOOKING}
    ManageBookingPage.Display Correctly    ${LANGUAGE_DEFAULT}

Verify navigation to "Login" Page from "Login" Button
    [Tags]    tc-pub-009    ts-pub-001    urd-pub-000    header    web public
    User located in "Home" page
    Click Button    ${HEADER_LOGIN_BUTTON}
    Switch Window    NEW
    Wait Until Page Contains    ${LOGIN_MAIN_HEADER}
    LoginPage.Display Correctly    ${LANGUAGE_DEFAULT}

Verify navigation to "Reservation" page from "Book Now!" button
    [Tags]    tc-pub-018    ts-pub-003    urd-pub-000    footer    web public
    User located in "Home" page
    Click Button    ${FOOTER_RESERVATION_BUTTON}
    ReservationFlightPage.The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${EMPTY}


*** Keywords ***
English is selected in header
    Log    "English is selected in header"
