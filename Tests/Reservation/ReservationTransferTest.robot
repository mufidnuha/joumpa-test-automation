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
TC-M06-017
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Transfer" filght without any data filled in initial form
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    Reservation Page Is Displayed Correctly    ${LANGUAGE_DEFAULT}    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

TC-M06-018
    [Documentation]    Verify the data transfer and navigate to Reservation page for the Transfer flight with the Origin field filled in
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport

TC-M06-019
    [Documentation]    Verify the data transfer and navigate to Reservation page for the Transfer flight with the Origin and Transfer fields filled in
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport

    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport

TC-M06-020
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

TC-M06-021
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-022
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-023
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

TC-M06-024
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-025
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-026
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-027
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-028
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-029
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport

TC-M06-030
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

TC-M06-031
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-032
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-033
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
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
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-034
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

TC-M06-035
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-036
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-037
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-038
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-039
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-040
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-041
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]

    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024

TC-M06-042
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024

TC-M06-043
    [Tags]    ts-m06-017    m-pub-06    reservation    web public
    User located in "Home" page
    Click Element    ${HOMEPAGE_RESERVATION_TRANSFER_BUTTON}
    HomePage.Search and select the airport in the "Origin" field
    ...    surabaya
    ...    SUB-Kota Surabaya-Juanda International Airport
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Search and select the airport in the Transfer field
    ...    cgk
    ...    CGK-Kota Tangerang-Soekarno Hatta International Airport
    HomePage.Search and select the airport in the "Destination" field
    ...    kuala lumpur
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    HomePage.Input date in "Arrival Date" field    09022024
    HomePage.Input date in Departure Date field    09022024
    Click Button    ${HOMEPAGE_RESERVATION_BOOKING_BUTTON}

    ReservationFlightPage.The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.Transfer is selected as Flight Type
    ReservationFlightPage.The "Origin" field is filled with    SUB-Kota Surabaya-Juanda International Airport
    ReservationFlightPage.The Transfer field is filled with    CGK-Kota Tangerang-Soekarno Hatta International Airport
    ReservationFlightPage.The "Destination" field is filled with
    ...    KUL-KUALA LUMPUR-KUALA LUMPUR INTERNATIONAL ARPT -Malaysia
    ...    ${RESERVATION_EN_FLIGHT_TYPE_LIST}[2]
    ReservationFlightPage.The "Arrival Date" field is filled with    09    02    2024
    ReservationFlightPage.The Departure Date field is filled with    09    02    2024
