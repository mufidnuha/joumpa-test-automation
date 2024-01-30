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
Resource            ./../Resources/PO/ReservationPassengerPage.robot
Resource            ./../Resources/PO/ReservationOrderExtrasPage.robot
# robot -d results Tests/ReservationTest.robot
Library             DateTime

Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test


*** Variables ***
${COLOR_IS_SELECTED}    rgb(236, 245, 235)
${MAG_INTERNATIONAL}    international
${MAG_DOMESTIC}         domestic


*** Test Cases ***
TC-M06-001
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" filght without any data filled in initial form
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" page
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]

TC-M06-002
    [Documentation]    Verify the data transfer and navigate to the "Reservation" page for the "Arrival" flight with the Origin field filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public

    User located in "Home" Page
    HomePage.Search and select the airport in the "Origin" field
    ...    Juanda
    ...    SUB-Kota Surabaya-Juanda International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport

TC-M06-003
    [Documentation]    Verify the data transfer and navigate to the "Reservation" page for the "Arrival" flight with the Origin and Destination fields filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Search and select the airport in the "Origin" field
    ...    Singapore
    ...    SIN-SINGAPORE-CHANGI INTL ARPT -Singapore
    HomePage.Search and select the airport in the "Destination" field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ...    ${MAG_INTERNATIONAL}
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SIN-SINGAPORE-CHANGI INTL ARPT -Singapore
    ReservationFlightPage.The "Destination" field is filled with
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The Products field contain MEET & GREET INTERNATIONAL and its description

TC-M06-004
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with the Origin and Arrival Date fields filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Search and select the airport in the "Origin" field
    ...    samarinda
    ...    AAP-Kota Samarinda-APT Pranoto International Airport
    HomePage.Input date in "Arrival Date" field    20012024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    AAP-Kota Samarinda-APT Pranoto International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    20    01    2024

TC-M06-005
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with Destination field filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Search and select the airport in the "Destination" field
    ...    jog
    ...    JOG-Kota Yogyakarta-Adi Sutjipto International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly    ${LANGUAGE_DEFAULT}    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    JOG-Kota Yogyakarta-Adi Sutjipto International Airport

TC-M06-006
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with Destination and Arrival Date fields filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Search and select the airport in the "Destination" field
    ...    balik
    ...    BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
    HomePage.Input date in "Arrival Date" field    15022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly    ${LANGUAGE_DEFAULT}    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    15    02    2024

TC-M06-007
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with Arrival Date field filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Input date in "Arrival Date" field    21012024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly    ${LANGUAGE_DEFAULT}    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    21    01    2024

TC-M06-008
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with all fields filled in
    [Tags]    ts-m06-015    m-pub-06    reservation    web public
    User located in "Home" Page
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    bpn
    ...    BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
    HomePage.Input date in "Arrival Date" field    25012024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[0]
    ...    ${MAG_DOMESTIC}
    ReservationFlightPage.Arrival is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    25    01    2024
    ReservationFlightPage.The "Products" field contain MEET & GREET DOMESTIC and its description
