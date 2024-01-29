*** Settings ***
Documentation       Testing joumpa

Resource            ../../Resources/Common.robot
Resource            ../../Resources/Footer.robot
Resource            ../../Resources/PO/HomePage.robot
Resource            ../../Resources/PO/ProductsPage.robot
Resource            ../../Resources/PO/OurLocationPage.robot
Resource            ../../Resources/PO/ManageBookingPage.robot
Resource            ../../Resources/PO/ContactUsPage.robot
Resource            ../../Resources/PO/LoginPage.robot
Resource            ../../Resources/PO/MeetAndGreetPage.robot
Resource            ../../Resources/PO/TransferPage.robot
Resource            ../../Resources/PO/ReservationFlightPage.robot
Resource            ../../Resources/PO/TermsAndConditionPage.robot
Resource            ../../Resources/PO/PrivacyPolicyPage.robot
Resource            ../../Resources/PO/ReservationPassengerPage.robot
Resource            ../../Resources/PO/ReservationOrderExtrasPage.robot
# robot -d results Tests/ReservationTest.robot
Library             DateTime

Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test


*** Variables ***
${COLOR_IS_SELECTED}    rgb(236, 245, 235)
${MAG_INTERNATIONAL}    international
${MAG_DOMESTIC}         domestic


*** Test Cases ***
TC-M06-009
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" filght without any data filled in initial form
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly    ${LANGUAGE}    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]

TC-M06-010
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin field filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Origin field
    ...    pdg
    ...    PDG-Kota Padang-Minangkabau International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Origin field is filled with    PDG-Kota Padang-Minangkabau International Airport

TC-M06-011
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin and Destination fields filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Origin field
    ...    pdg
    ...    PDG-Kota Padang-Minangkabau International Airport
    HomePage.Search and select the airport in the Destination field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ...    ${MAG_DOMESTIC}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Origin field is filled with    PDG-Kota Padang-Minangkabau International Airport
    ReservationFlightPage.The Destination field is filled with
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The Products field contain MEET & GREET DOMESTIC and its description

TC-M06-012
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin and Arrival Date fields filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Origin field
    ...    pangkal
    ...    PGK-Kota Pangkal Pinang-Depati Amir Airport
    HomePage.Input date in Arrival Date field    30012024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Origin field is filled with    PGK-Kota Pangkal Pinang-Depati Amir Airport
    ReservationFlightPage.The Arrival Date field is filled with    30    01    2024

TC-M06-013
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Destination field filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Destination field
    ...    jeddah
    ...    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Destination field is filled with    JED-JEDDAH-JEDDAH INTL -Saudi arabia

TC-M06-014
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Destination and Arrival Date fields filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Destination field
    ...    jeddah
    ...    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    HomePage.Input date in Arrival Date field    02022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Destination field is filled with    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    ReservationFlightPage.The Arrival Date field is filled with    02    02    2024

TC-M06-015
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Arrival Date field filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Input date in Arrival Date field    02032024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Arrival Date field is filled with    02    03    2024

TC-M06-016
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with all fields filled in
    [Tags]    ts-m06-016    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the Origin field
    ...    jog
    ...    JOG-Kota Yogyakarta-Adi Sutjipto International Airport
    HomePage.Search and select the airport in the Destination field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    HomePage.Input date in Arrival Date field    20022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.Reservation Page Is Displayed Correctly
    ...    ${LANGUAGE}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[1]
    ...    ${MAG_INTERNATIONAL}1.
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The Origin field is filled with    JOG-Kota Yogyakarta-Adi Sutjipto International Airport
    ReservationFlightPage.The Destination field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ReservationFlightPage.The Arrival Date field is filled with    20    02    2024
