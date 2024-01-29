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
Resource            ../../Resources/PO/ReservationCheckOutPage.robot
Resource            ../../Resources/TestData/ProductionData.robot
Library             String

# robot -d results Tests/Reservation/ReservationArrivalTest.robot
Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test


*** Variables ***
${MAG_INTERNATIONAL}    international
${MAG_DOMESTIC}         domestic


*** Test Cases ***
TC-M07-001
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight without any data filled in initial form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_ARRIVAL}

TC-M07-002
    [Documentation]    Verify the data transfer and navigate to the "Reservation" page for the "Arrival" flight with the "Origin" field filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User located in "Home" page
    HomePage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_ARRIVAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Origin" field is filled with
    ...    ${airport_surabaya}[airport]

TC-M07-003
    [Documentation]    Verify the data transfer and navigate to the "Reservation" page for the "Arrival" flight with the "Origin" and "Destination" fields filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Search and select the airport in the "Origin" field
    ...    ${airport_singapore}[keyword]
    ...    ${airport_singapore}[airport]
    HomePage.Search and select the airport in the "Destination" field
    ...    ${airport_tangerang}[keyword]
    ...    ${airport_tangerang}[airport]
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_ARRIVAL}
    ...    ${MAG_INTERNATIONAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Origin" field is filled with    ${airport_singapore}[airport]
    ReservationFlightPage.The "Destination" field is filled with
    ...    ${airport_tangerang}[airport]
    ReservationFlightPage.The "Products" field contain MEET & GREET INTERNATIONAL and its description

TC-M07-004
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with the "Origin" and "Arrival Date" fields filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Search and select the airport in the "Origin" field
    ...    ${airport_samarinda}[keyword]
    ...    ${airport_samarinda}[airport]
    HomePage.Input date in "Arrival Date" field    ${arrival_date_valid}
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_ARRIVAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Origin" field is filled with    ${airport_samarinda}[airport]
    ReservationFlightPage.The "Arrival Date" field is filled with
    ...    ${arrival_date_valid_dict}[date]
    ...    ${arrival_date_valid_dict}[month]
    ...    ${arrival_date_valid_dict}[year]

TC-M07-005
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with "Destination" field filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Search and select the airport in the "Destination" field
    ...    ${airport_yogyakarta}[keyword]
    ...    ${airport_yogyakarta}[airport]
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${FLIGHT_TYPE_ARRIVAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Destination" field is filled with
    ...    ${airport_yogyakarta}[airport]

TC-M07-006
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with "Destination" and "Arrival Date" fields filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Search and select the airport in the "Destination" field
    ...    ${airport_balikpapan}[keyword]
    ...    ${airport_balikpapan}[airport]
    HomePage.Input date in "Arrival Date" field    ${arrival_date_valid}
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${FLIGHT_TYPE_ARRIVAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Destination" field is filled with
    ...    ${airport_balikpapan}[airport]
    ReservationFlightPage.The "Arrival Date" field is filled with
    ...    ${arrival_date_valid_dict}[date]
    ...    ${arrival_date_valid_dict}[month]
    ...    ${arrival_date_valid_dict}[year]

TC-M07-007
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with "Arrival Date" field filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Input date in "Arrival Date" field    ${arrival_date_valid}
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly    ${LANGUAGE_DEFAULT}    ${FLIGHT_TYPE_ARRIVAL}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Arrival Date" field is filled with
    ...    ${arrival_date_valid_dict}[date]
    ...    ${arrival_date_valid_dict}[month]
    ...    ${arrival_date_valid_dict}[year]

TC-M07-008
    [Documentation]    Verify the data transfer and navigate to "Reservation" page for the "Arrival" flight with all fields filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    HomePage.Search and select the airport in the "Destination" field
    ...    ${airport_balikpapan}[keyword]
    ...    ${airport_balikpapan}[airport]
    HomePage.Input date in "Arrival Date" field    ${arrival_date_valid}
    Click Button    ${homepage_reservation_booking_button}

    The "Reservation" page display correctly
    ...    ${LANGUAGE_DEFAULT}
    ...    ${FLIGHT_TYPE_ARRIVAL}
    ...    ${MAG_DOMESTIC}
    ReservationFlightPage.The "Arrival" is selected as "Flight Type"
    ReservationFlightPage.The "Origin" field is filled with
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.The "Destination" field is filled with
    ...    ${airport_balikpapan}[airport]
    ReservationFlightPage.The "Arrival Date" field is filled with
    ...    ${arrival_date_valid_dict}[date]
    ...    ${arrival_date_valid_dict}[month]
    ...    ${arrival_date_valid_dict}[year]
    ReservationFlightPage.The "Products" field contain MEET & GREET DOMESTIC and its description

TC-M07-009
    [Documentation]    Verify an alerts appears when input "Arrival Date" less than today in Initial Form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Home" page
    HomePage.Input date in "Arrival Date" field    ${arrival_date_invalid}
    Click Button    ${homepage_reservation_booking_button}

    Show Alerts    Date must be greater than equal to    ${True}

TC-M07-010
    [Documentation]    Verify navigation to "Passenger" form with all required fields on a "Flight" form are filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]

    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]

    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]

    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}

    Click Element    ${reservation_flight_products}
    Click Button    ${reservation_flight_next_button}
    ReservationPassengerPage.The "Passenger" form display correctly    ${LANGUAGE_DEFAULT}

TC-M07-011
    [Documentation]    Verify an alerts appears without completing all fields in "Flight" Form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" Page

    Click Element    ${reservation_flight_next_button}

    Show "Not Available" in "Products" field    ${LANGUAGE_DEFAULT}
    Show Alerts    Please complete the data Flight Type!

TC-M07-012
    [Documentation]    Verify an alert appears with only the "Flight Type" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" Page

    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}
    Click Element    ${reservation_flight_products}
    Click Button    ${reservation_flight_next_button}

    Show "Not Available" in "Products" field    ${LANGUAGE_DEFAULT}
    Show Alerts    Please complete the data Flight Type!

TC-M07-013
    [Documentation]    Verify an alerts appears with only the "Origin" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}

    Click Button    ${reservation_flight_next_button}

    Show "Not Available" in "Products" field    ${LANGUAGE_DEFAULT}
    Show Alerts    Please complete the data Product!

TC-M07-014
    [Documentation]    Verify an alerts appears with only the "Destination" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}

    Click Button    ${reservation_flight_next_button}

    Show "Not Available" in "Products" field    ${LANGUAGE_DEFAULT}
    Show Alerts    Please complete the data Product!

TC-M07-015
    [Documentation]    Verify an alert appears with only the "Airline" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}
    Element Should Contain    ${reservation_flight_flight_info_airline_code}    ${EMPTY}
    Show Alerts    Please complete the data Airline!

TC-M07-016
    [Documentation]    Verify an alert appears with only the "Flight Number" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}
    Sleep    3s

    Show Alerts    Please complete the data Flight Number!

TC-M07-017
    [Documentation]    Verify an alert appears with only the "Arrival Date" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}
    Sleep    3s

    Show Alerts    Please complete the data Date!

TC-M07-018
    [Documentation]    Verify an alert appears with only the "Estimate Time Arrival" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}

    Show Alerts    Please complete the data Time!

TC-M07-019
    [Documentation]    Verify an alert appears with only the "Products" field not filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_valid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}

    Click Button    ${reservation_flight_next_button}

    Show Alerts    Please complete the data Product!

# TC-M07-020
#    [Documentation]    Verify an alerts appears when choose the same airport in "Origin" and "Destination" field
#    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public    manual
#    User located in "Reservation" page
#    Click Element    ${reservation_flight_arrival_button}

#    ReservationFlightPage.Search and select the airport in the "Origin" field
#    ...    ${airport_surabaya}[keyword]
#    ...    ${airport_surabaya}[airport]
#    ...
#    ReservationFlightPage.Search and select the airport in the "Destination" field
#    ...    ${airport_surabaya}[keyword]
#    ...    ${airport_surabaya}[airport]

#    Show Alerts    Can't select the same airport!

TC-M07-021
    [Documentation]    Verify an alerts appears when input arrival date less than today
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date_invalid}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time_valid}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}

    Show Alerts    Date must be greater than equal to    ${True}

TC-M07-022
    [Documentation]    Verify an alerts appears when input "Arrival Date" today and "Estimation Arrival Time" less than now
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User located in "Reservation" page

    Click Element    ${reservation_flight_arrival_button}
    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${airport_surabaya}[keyword]
    ...    ${airport_surabaya}[airport]
    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${airport_semarang}[keyword]
    ...    ${airport_semarang}[airport]
    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline_valid}[keyword]
    ...    ${airline_valid}[airline]
    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number_valid}

    Input Text    ${reservation_flight_flight_info_date_input}    ${current_date}
    Input Text    ${reservation_flight_flight_info_time_input}    ${current_time}
    Click Element    ${reservation_flight_products}

    Click Button    ${reservation_flight_next_button}

    Show alerts    Your estimated arrival has passed!

TC-M07-023
    [Documentation]    Verify navigation to "Order Extras" form with all required fields on a form are filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Input Text    ${reservation_passenger_notes_input}    ${passenger_notes}
    Click Element    ${reservation_passenger_passenger_as_booker_checkbox}

    Click Button    ${reservation_passenger_next_button}
    Sleep    3s
    ReservationOrderExtrasPage.The "Order Extras" form in "Reservation" page displayed correctly    ${LANGUAGE_DEFAULT}

TC-M07-024
    [Documentation]    Verify navigation to "Order Extras" form with all required fields are filled in excepts Passenger Notes field
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Click Element    ${reservation_passenger_passenger_as_booker_checkbox}

    Click Button    ${reservation_passenger_next_button}
    Sleep    3s
    ReservationOrderExtrasPage.The "Order Extras" form in "Reservation" page displayed correctly    ${LANGUAGE_DEFAULT}

TC-M07-025
    [Documentation]    Verify navigation to "Order Extras" form with two passenger added and all required fields on a form are filled in
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    ${sequence_passenger} =    Set Variable    0
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    20s

    Select "Title" in Passenger Information    ${passenger_title}    ${sequence_passenger}
    Input Text    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}    ${sequence_passenger}
    Input Text    ${reservation_passenger_passenger_email_input}[${sequence_passenger}]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Click Element    ${reservation_passenger_add_button}
    ${sequence_passenger} =    Set Variable    1
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    20s
    Select "Title" in Passenger Information    ${second_passenger_title}    ${sequence_passenger}
    Input Text    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    ${second_passenger_name}
    Search and Select "Nationality" in Passenger Information
    ...    ${second_passenger_nationality}
    ...    ${sequence_passenger}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Click Element    ${reservation_passenger_passenger_as_booker_checkbox}

    Click Button    ${reservation_passenger_next_button}

TC-M07-026
    [Documentation]    Verify an alerts appears without completing all fields in "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Passenger!

TC-M07-027
    [Documentation]    Verify an alert appears without fill passenger in "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Select "Title" in Booker Information    ${booker_title}
    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_valid}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Passenger!

TC-M07-028
    [Documentation]    Verify an alerts appears with the "Title" field not filled in Passenger Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Title!

TC-M07-029
    [Documentation]    Verify an alerts appears with the "Name" field not filled in Passenger Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Name!

TC-M07-030
    [Documentation]    Verify an alerts appears with the "Nationality" field not filled in Passenger Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Nationality!

TC-M07-031
    [Documentation]    Verify an alerts appears with the "Email" field not filled in Passenger Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Email!

TC-M07-032
    [Documentation]    Verify an alerts appears with the "Phone Number" field not filled in Passenger Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}

    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Phone Number!

TC-M07-033
    [Documentation]    Verify an alerts appears with the "Name" field not filled in the second passenger
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    ${sequence_passenger} =    Set Variable    0
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    20s

    Select "Title" in Passenger Information    ${passenger_title}    ${sequence_passenger}
    Input Text    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}    ${sequence_passenger}
    Input Text    ${reservation_passenger_passenger_email_input}[${sequence_passenger}]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Click Element    ${reservation_passenger_add_button}
    ${sequence_passenger} =    Set Variable    1
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[${sequence_passenger}]    20s
    Select "Title" in Passenger Information    ${second_passenger_title}    ${sequence_passenger}
    Search and Select "Nationality" in Passenger Information
    ...    ${second_passenger_nationality}
    ...    ${sequence_passenger}
    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Please complete the data Name!

TC-M07-034
    [Documentation]    Verify an alert appears without fill passenger in "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_invalid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}

    Show Alerts    Wrong email format!

TC-M07-035
    [Documentation]    Verify an alerts appears with the "Title" field not filled in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_valid}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Booker Information!

TC-M07-036
    [Documentation]    Verify an alerts appears with the "Name" field not filled in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Select "Title" in Booker Information    ${booker_title}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_valid}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Booker Information!

TC-M07-037
    [Documentation]    Verify an alerts appears with the "Nationality" field not filled in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Select "Title" in Booker Information    ${booker_title}
    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_valid}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Booker Information!

TC-M07-038
    [Documentation]    Verify an alerts appears with the "Email" field not filled in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Select "Title" in Booker Information    ${booker_title}
    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Booker Information!

TC-M07-039
    [Documentation]    Verify an alerts appears with the "Invalid Email" format in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Select "Title" in Booker Information    ${booker_title}
    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_invalid}
    Input Text    ${reservation_passenger_booker_phone_number_input}    ${booker_phone_number}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Wrong email format Booker!

TC-M07-040
    [Documentation]    Verify an alerts appears with the "Phone Number" field not filled in Booker Information of "Passenger" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_semarang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s

    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${booker_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email_valid}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}
    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    Select "Title" in Booker Information    ${booker_title}
    Input Text    ${reservation_passenger_booker_name_input}    ${booker_name}
    Search and Select "Nationality" in Booker Information    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_email_input}    ${booker_email_valid}

    Click Button    ${reservation_passenger_next_button}

    Show Alerts    Please complete the data Booker Information!

TC-M07-041
    [Documentation]    Verify navigation to Check Out form without complete the form in "Order Extras" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Button    ${reservation_orderextras_next_button}

    ReservationCheckOutPage.The "Check Out" page display correctly    ${LANGUAGE_DEFAULT}

TC-M07-042
    [Documentation]    Verify the total of "Order Extras" for Lounge and verify navigation to Check Out with booking Lounge in "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}
    ...    ${True}
    ...    ${True}
    ...    ${True}

    Click Element    ${reservation_orderextras_lounge_expand}
    Select Lounge    ${lounge_data}
    Input Text    ${reservation_orderextras_lounge_adult_input}    2
    Input Text    ${reservation_orderextras_lounge_child_input}    1
    Input Text    ${reservation_orderextras_lounge_infant_input}    1

    ${orderextras_lounge_total}
    ...    ${orderextras_adult_total}
    ...    ${orderextras_child_total}
    ...    ${orderextras_infant_total} =
    ...    Get "Lounge" total in "Order Extras" form

    Click Button    ${reservation_orderextras_next_button}

    ReservationCheckOutPage.The "Check Out" page display correctly    ${LANGUAGE_DEFAULT}
    "Lounge" total in "Order Extras" form should be equal total in "Check Out" form
    ...    ${orderextras_lounge_total}
    ...    ${orderextras_adult_total}
    ...    ${orderextras_child_total}
    ...    ${orderextras_infant_total}

TC-M07-043
    [Documentation]    Verify an alerts appears without select Lounge type but fill in total Adult and Child in "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Element    ${reservation_orderextras_lounge_expand}
    Input Text    ${reservation_orderextras_lounge_adult_input}    1

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    Please complete the Lounge type!

TC-M07-044
    [Documentation]    Verify navigation to "Check Out" form with only booking "Transportion" in "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Element    ${reservation_orderextras_transportation_expand}
    Select Region    ${region_data}
    Select Car Type    ${car_type_data}
    Input Text    ${reservation_orderextras_transportation_total_unit_input}    1

    ${orderextras_transportation_total} =    Get "Transportation" total in "Order Extras" form

    Click Button    ${reservation_orderextras_next_button}

    ReservationCheckOutPage.The "Check Out" page display correctly    ${LANGUAGE_DEFAULT}
    "Transportation" total in "Order Extras" form should be equal total in "Check Out" form
    ...    ${orderextras_transportation_total}

TC-M07-045
    [Documentation]    Verify an alerts appears without select "Region" in Transportation "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Element    ${reservation_orderextras_transportation_expand}
    Select Car Type    ${car_type_data}
    Input Text    ${reservation_orderextras_transportation_total_unit_input}    1

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    Please complete the data Transportation!

TC-M07-046
    [Documentation]    Verify an alerts appears without select "Car Type" in Transportation "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Element    ${reservation_orderextras_transportation_expand}
    Select Region    ${region_data}
    Input Text    ${reservation_orderextras_transportation_total_unit_input}    1

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    Please complete the data Transportation!

TC-M07-047
    [Documentation]    Verify an alerts appears without input "Total Unit" in Transportation "Order Extras"
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}

    Click Element    ${reservation_orderextras_transportation_expand}
    Select Region    ${region_data}
    Select Car Type    ${car_type_data}

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    Please complete the data Transportation!

TC-M07-048
    [Documentation]    Verify an alerts appears when input adult's lounge more than total adult passenger
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}
    ...    ${True}
    ...    ${True}
    ...    ${True}

    Click Element    ${reservation_orderextras_lounge_expand}
    Select Lounge    ${lounge_data}
    Input Text    ${reservation_orderextras_lounge_adult_input}    4
    Input Text    ${reservation_orderextras_lounge_child_input}    1
    Input Text    ${reservation_orderextras_lounge_infant_input}    1

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    The number of adult lounges cannot be more than the number of adult passengers!

TC-M07-049
    [Documentation]    Verify an alerts appears when input child's lounge more than total child passenger
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}
    ...    ${True}
    ...    ${True}
    ...    ${True}

    Click Element    ${reservation_orderextras_lounge_expand}
    Select Lounge    ${lounge_data}
    Input Text    ${reservation_orderextras_lounge_adult_input}    2
    Input Text    ${reservation_orderextras_lounge_child_input}    2
    Input Text    ${reservation_orderextras_lounge_infant_input}    1

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    The number of child lounges cannot be more than the number of child passengers!

TC-M07-050
    [Documentation]    Verify an alerts appears when input infant's lounge more than total infant passenger
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public

    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}
    ...    ${True}
    ...    ${True}
    ...    ${True}

    Click Element    ${reservation_orderextras_lounge_expand}
    Select Lounge    ${lounge_data}
    Input Text    ${reservation_orderextras_lounge_adult_input}    2
    Input Text    ${reservation_orderextras_lounge_child_input}    1
    Input Text    ${reservation_orderextras_lounge_infant_input}    2

    Click Button    ${reservation_orderextras_next_button}

    Show Alerts    The number of infant lounges cannot be more than the number of infant passengers!

TC-M07-051
    [Documentation]    Verify the data in the "Flight" form, "Passenger" form, and "Order Extras" form matches in "Booking Resume", "Order Extras", and "Detail Price" fields in "Check Out" form
    [Tags]    ts-m07-015    m-pub-07    reservation    arrival    web public
    User has filled in the Flight form correctly
    ...    ${airport_surabaya}
    ...    ${airport_tangerang}
    ...    ${airline_valid}
    ...    ${flight_number_valid}
    ...    ${arrival_date_valid}
    ...    ${est_arrival_time_valid}
    User has filled in the Passenger form correctly
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email_valid}
    ...    ${passenger_phone_number}
    ...    ${True}
    ...    ${True}
    ...    ${True}
    User has filled in the Order Extras form correctly
    ...    ${lounge_data}
    ...    2
    ...    1
    ...    1
    ...    ${region_data}
    ...    ${car_type_data}
    ...    1


*** Keywords ***
Show Alerts
    [Arguments]    ${error_message}    ${arrival_date_less}=${False}

    IF    ${arrival_date_less}
        ${current_date} =    Get Current Date    result_format=datetime
        ${today} =    Convert Date    ${current_date}    result_format=%d/%m/%Y
        Wait Until Page Contains    ${error_message} ${today}!
        Page Should Contain    ${error_message} ${today}!
    ELSE
        Wait Until Page Contains    ${error_message}
        Page Should Contain    ${error_message}
    END

"Lounge" total in "Order Extras" form should be equal total in "Check Out" form
    [Arguments]
    ...    ${orderextras_lounge_total}
    ...    ${orderextras_adult_total}
    ...    ${orderextras_child_total}
    ...    ${orderextras_infant_total}
    ...    ${language}=${LANGUAGE_DEFAULT}
    ${checkout_lounge} =    Get Text    ${reservation_checkout_en_lounge_value}
    ${checkout_lounge_total} =    Get Text    ${reservation_checkout_en_detail_price_lounge_total}
    Click Element    ${reservation_checkout_en_detail_price_lounge_expand}

    IF    "${language}" == "${LANGUAGE_EN}"
        ${checkout_adult} =    Get Text    ${reservation_checkout_en_detail_price_lounge_adult_number}
        ${checkout_child} =    Get Text    ${reservation_checkout_en_detail_price_lounge_child_number}
        ${checkout_infant} =    Get Text    ${reservation_checkout_en_detail_price_lounge_infant_number}
        ${checkout_adult_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_adult_price}
        ${checkout_child_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_child_price}
        ${checkout_infant_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_infant_price}
    ELSE
        ${checkout_adult} =    Get Text    ${reservation_checkout_id_detail_price_lounge_adult_number}
        ${checkout_child} =    Get Text    ${reservation_checkout_id_detail_price_lounge_child_number}
        ${checkout_infant} =    Get Text    ${reservation_checkout_id_detail_price_lounge_infant_number}
        ${checkout_adult_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_adult_price}
        ${checkout_child_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_child_price}
        ${checkout_infant_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_infant_price}
    END

    ${checkout_adult_number} =    Remove String Using Regexp    ${checkout_adult}    x.*
    ${checkout_child_number} =    Remove String Using Regexp    ${checkout_child}    x.*
    ${checkout_infant_number} =    Remove String Using Regexp    ${checkout_infant}    x.*

    ${checkout_adult_price} =    Remove String    ${checkout_adult_price}    x Rp    .    ${SPACE}
    ${checkout_child_price} =    Remove String    ${checkout_child_price}    x Rp    .    ${SPACE}
    ${checkout_infant_price} =    Remove String    ${checkout_infant_price}    x Rp    .    ${SPACE}

    ${checkout_lounge_total} =    Remove String    ${checkout_lounge_total}    .    Rp    ${SPACE}
    ${checkout_adult_total} =    Evaluate    ${checkout_adult_number} * ${checkout_adult_price}
    ${checkout_child_total} =    Evaluate    ${checkout_child_number} * ${checkout_child_price}
    ${checkout_infant_total} =    Evaluate    ${checkout_infant_number} * ${checkout_infant_price}

    Should Be Equal    ${orderextras_lounge_total}    ${checkout_lounge_total}
    Should Be Equal    ${orderextras_adult_total}    ${checkout_adult_total}
    Should Be Equal    ${orderextras_child_total}    ${checkout_child_total}
    Should Be Equal    ${orderextras_infant_total}    ${checkout_infant_total}

"Transportation" total in "Order Extras" form should be equal total in "Check Out" form
    [Arguments]    ${orderextras_transportation_total}    ${language}=${LANGUAGE_DEFAULT}

    IF    "${language}" == "${LANGUAGE_EN}"
        ${checkout_transportation} =    Get Text    ${reservation_checkout_en_detail_price_transportation_total}
    ELSE
        ${checkout_transportation} =    Get Text    ${reservation_checkout_id_detail_price_transportation_total}
    END

    ${checkout_transportation} =    Split String    ${checkout_transportation}    ${SPACE}unit x${SPACE}
    ${checkout_transportation_unit} =    Set Variable    ${checkout_transportation}[0]
    ${checkout_transportation_price} =    Set Variable    ${checkout_transportation}[1]
    ${checkout_transportation_price} =    Remove String    ${checkout_transportation_price}    Rp    .

    ${checkout_transportation_total} =    Evaluate
    ...    ${checkout_transportation_unit} * ${checkout_transportation_price}

    Should Be Equal    ${orderextras_transportation_total}    ${checkout_transportation_total}
