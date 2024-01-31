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


*** Test Cases ***
TC-M07-073
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Transfer" filght without any data filled in initial form
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${FLIGHT_TYPE_TRANSFER}

TC-M07-074
    [Documentation]    Verify the data transfer and navigate to Reservation page for the Transfer flight with the Origin field filled in
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport

TC-M07-075
    [Documentation]    Verify the data transfer and navigate to Reservation page for the Transfer flight with the Origin and Transfer fields filled in
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport

    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport

TC-M07-076
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}

TC-M07-077
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-078
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-079
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}

TC-M07-080
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-081
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-082
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-083
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-084
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-085
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport

TC-M07-086
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}

TC-M07-087
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-088
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-089
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-090
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}

TC-M07-091
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-092
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-093
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-094
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-095
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-096
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-097
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}

    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M07-098
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M07-099
    [Tags]    ts-m07-017    m-pub-07    reservation    transfer    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${FLIGHT_TYPE_TRANSFER}
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024
