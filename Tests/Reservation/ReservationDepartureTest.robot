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
# robot -d results Tests/ReservationDepartureTest.robot
Library             DateTime

Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test


*** Variables ***
${COLOR_IS_SELECTED}    rgb(236, 245, 235)
${MAG_INTERNATIONAL}    international
${MAG_DOMESTIC}         domestic


*** Test Cases ***
TC-M07-065
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" filght without any data filled in initial form
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${FLIGHT_TYPE_DEPARTURE}

TC-M07-066
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin field filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    pdg
    ...    PDG-Kota Padang-Minangkabau International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    PDG-Kota Padang-Minangkabau International Airport

TC-M07-067
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin and Destination fields filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    pdg
    ...    PDG-Kota Padang-Minangkabau International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ...    ${MAG_DOMESTIC}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    PDG-Kota Padang-Minangkabau International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Products" field contain MEET & GREET DOMESTIC and its description

TC-M07-068
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with the Origin and Arrival Date fields filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    pangkal
    ...    PGK-Kota Pangkal Pinang-Depati Amir Airport
    HomePage.Input date in "Arrival Date" field    30012024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    PGK-Kota Pangkal Pinang-Depati Amir Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    30    01    2024

TC-M07-069
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Destination field filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    jeddah
    ...    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with    JED-JEDDAH-JEDDAH INTL -Saudi arabia

TC-M07-070
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Destination and Arrival Date fields filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    jeddah
    ...    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    HomePage.Input date in "Arrival Date" field    02022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with    JED-JEDDAH-JEDDAH INTL -Saudi arabia
    ReservationFlightPage.The "Arrival Date" field is filled with    02    02    2024

TC-M07-071
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with Arrival Date field filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Input date in "Arrival Date" field    02032024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    02    03    2024

TC-M07-072
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Departure" flight with all fields filled in
    [Tags]    ts-m07-016    m-pub-07    reservation    departure    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_DEPARTURE_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    jog
    ...    JOG-Kota Yogyakarta-Adi Sutjipto International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    HomePage.Input date in "Arrival Date" field    20022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_DEPARTURE}
    ...    ${MAG_INTERNATIONAL}1.
    ReservationFlightPage.Departure is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    JOG-Kota Yogyakarta-Adi Sutjipto International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ReservationFlightPage.The "Arrival Date" field is filled with    20    02    2024
