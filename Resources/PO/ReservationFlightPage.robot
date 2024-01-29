*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot
Resource    ReservationPassengerPage.robot
Resource    ../../Resources/TestData/ProductionData.robot


*** Variables ***
${reservation_flight_en_new_reservation_title}                  New Reservation
@{reservation_flight_en_process_reservation_list}               Flight
...                                                             Passenger
...                                                             Order Extras
...                                                             Check Out
${reservation_flight_en_flight_type_title}                      Flight Type
@{reservation_flight_en_flight_type_list}                       Arrival
...                                                             Departure
...                                                             Transfer
${reservation_flight_en_flight_info_title}                      Flight Information
${reservation_flight_en_flight_info_origin_label}               Origin
${reservation_flight_en_flight_info_destination_label}          Destination
${reservation_flight_en_flight_info_transfer_label}             Transfer
${reservation_flight_en_flight_info_airline_label}              Airline
${reservation_flight_en_flight_info_flight_number_label}        Flight Number
${reservation_flight_en_flight_info_arrival_date_label}         Arrival Date
${reservation_flight_en_flight_info_arrival_time_label}         Estimate Time Arrival
${reservation_flight_en_flight_info_departure_date_label}       Departure Date
${reservation_flight_en_flight_info_departure_time_label}       Estimate Time Departure
${reservation_flight_en_arrival_info_title}                     Arrival Information
${reservation_flight_en_product_title}                          Product
${reservation_flight_en_product_not_available_label}            Not Available
${reservation_flight_en_product_transfer_title}                 TRANSFER
${reservation_flight_en_product_transfer_description}           We provide convenience for you when transferring between flight or airport zones. This includes transfer between international flights, domestic flights, or combination of two.
${reservation_flight_en_product_mag_domestic_title}             MEET & GREET DOMESTIC
${reservation_flight_en_product_mag_domestic_description}       This service is provided to help you go through airport procedures during your international or domestic flight with your personal VIP assistant, which will provide you with convenience and comfort.
${reservation_flight_en_product_mag_inter_title}                MEET & GREET INTERNATIONAL
${reservation_flight_en_product_mag_inter_description}          This service is provided to help you go through airport procedures during your international or domestic flight with your personal VIP assistant, which will provide you with convenience and comfort.

${reservation_flight_id_new_reservation_title}                  Reservasi Baru
@{reservation_flight_id_process_reservation_list}               Penerbangan
...                                                             Penumpang
...                                                             Layanan Tambahan
...                                                             Check Out
${reservation_flight_id_flight_type_title}                      Jenis Penerbangan
@{reservation_flight_id_flight_type_list}                       Kedatangan
...                                                             Keberangkatan
...                                                             Transfer
${reservation_flight_id_flight_info_title}                      Informasi Penerbangan
${reservation_flight_id_flight_info_origin_label}               Asal
${reservation_flight_id_flight_info_destination_label}          Tujuan
${reservation_flight_id_flight_info_transfer_label}             Transfer
${reservation_flight_id_flight_info_airline_label}              Pesawat
${reservation_flight_id_flight_info_flight_number_label}        No. Penerbangan
${reservation_flight_id_flight_info_arrival_date_label}         Tanggal Kedatangan
${reservation_flight_id_flight_info_arrival_time_label}         Perkiraan Waktu Kedatangan
${reservation_flight_id_flight_info_departure_date_label}       Tanggal Keberangkatan
${reservation_flight_id_flight_info_departure_time_label}       Perkiraan Waktu Keberangkatan
${reservation_flight_id_arrival_info_title}                     Informasi Kedatangan
${reservation_flight_id_product_title}                          Produk
${reservation_flight_id_product_not_available_label}            Tidak Tersedia
${reservation_flight_id_product_transfer_title}                 TRANSFER
${reservation_flight_id_product_transfer_description}           We provide convenience for you when transferring between flight or airport zones. This includes transfer between international flights, domestic flights, or combination of two.
${reservation_flight_id_product_mag_domestic_title}             MEET & GREET DOMESTIC
${reservation_flight_id_product_mag_domestic_description}       This service is provided to help you go through airport procedures during your international or domestic flight with your personal VIP assistant, which will provide you with convenience and comfort.
${reservation_flight_id_product_mag_inter_title}                MEET & GREET INTERNATIONAL
${reservation_flight_id_product_mag_inter_description}          This service is provided to help you go through airport procedures during your international or domestic flight with your personal VIP assistant, which will provide you with convenience and comfort.

${reservation_flight_arrival_button}                            //span[contains(text(), "flight_land")]//ancestor::div[@class="button"]
${reservation_flight_departure_button}                          //span[contains(text(), "flight_takeoff")]//ancestor::div[@class="button"]
${reservation_flight_transfer_button}                           //span[contains(text(), "connecting_airports")]//ancestor::div[@class="button"]

${reservation_flight_origin_input}                              //input[@name="airport_id_from"]//preceding-sibling::div//input
${reservation_flight_origin_text_field}                         //input[@name="airport_id_from"]//ancestor::div[@class="basic-single undefined css-b62m3t-container"]//div[@class="select__single-value css-1dimb5e-singleValue"]
${reservation_flight_destination_input}                         //input[@name="airport_id_to"]//preceding-sibling::div//input
${reservation_flight_destination_text_field}                    //input[@name="airport_id_to"]//ancestor::div[@class="basic-single undefined css-b62m3t-container"]//div[@class="select__single-value css-1dimb5e-singleValue"]
${reservation_flight_transfer_input}                            //input[@name="airport_id_transfer"]//preceding-sibling::div//input
${reservation_flight_transfer_text_field}                       //input[@name="airport_id_transfer"]//ancestor::div[@class="basic-single undefined css-b62m3t-container"]//div[@class="select__single-value css-1dimb5e-singleValue"]

${reservation_flight_flight_info_airline_select_input}          //input[@name="airplane_name"]//preceding-sibling::div//input
${reservation_flight_flight_info_airline_text_field}            //input[@name="airplane_name"]//preceding-sibling::div/div[1]/div[1]
${reservation_flight_flight_info_airline_code}                  //input[@name="airplane_number"]//preceding-sibling::div//span
${reservation_flight_flight_info_flight_number_input}           //input[@name="airplane_number"]
${reservation_flight_flight_info_date_input}                    //input[@name="date"]
${reservation_flight_flight_info_time_input}                    //input[@name="time"]

${reservation_flight_arrival_info_airline_select_input}         //input[@name="airplane_name_transfer_to"]//preceding-sibling::div//input
${reservation_flight_arrival_info_airline_code}                 //input[@name="airplane_number_transfer_to"]//preceding-sibling::div//span
${reservation_flight_arrival_info_flight_number_input}          //input[@name="airplane_number_transfer_to"]
${reservation_flight_arrival_info_date_input}                   //input[@name="date_transfer_to"]
${reservation_flight_arrival_info_time_input}                   //input[@name="time_transfer_to"]

${reservation_flight_products}                                  //div[@style="float: right;"]//preceding-sibling::div[1]//span[@class="card-header-inactive"]

${reservation_flight_next_button}                               //div[@style="float: right;"]//button[2]
${reservation_flight_cancel_button}                             //div[@style="float: right;"]//button[1]

${airport}                                                      ""
${selected_airport} =                                           /div[contains(text(), ${airport})]

${airline}                                                      ""
${selected_airline} =                                           /div[contains(text(), ${airport})]

${reservation_flight_checkmark_flight}                          //div[@class="side-menu-no-border"]/div[2]//span
${reservation_flight_checkmark_passenger}                       //div[@class="side-menu-no-border"]/div[3]//span
${reservation_flight_checkmark_orderextras}                     //div[@class="side-menu-no-border"]/div[4]//span
${reservation_flight_checkmark_checkout}                        //div[@class="side-menu-no-border"]/div[5]//span
${checkmark_green}                                              rgb(99, 174, 92)


*** Keywords ***
Page Should Contain Reservation title
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${header_en_reservation_title}
    ELSE
        Page Should Contain    ${header_id_reservation_title}
    END

Page Should Contain Header Reservation
    [Arguments]    ${language}
    Page Should Contain Image    ${header_joumpa_logo}
    Page Should Contain Reservation title    ${language}

Page Should Contain Process Reservation
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_flight_en_new_reservation_title}
        Page Should Contain    ${reservation_flight_en_process_reservation_list}[0]
        Page Should Contain    ${reservation_flight_en_process_reservation_list}[1]
        Page Should Contain    ${reservation_flight_en_process_reservation_list}[2]
        Page Should Contain    ${reservation_flight_en_process_reservation_list}[3]
    ELSE
        Page Should Contain    ${reservation_flight_id_new_reservation_title}
        Page Should Contain    ${reservation_flight_id_process_reservation_list}[0]
        Page Should Contain    ${reservation_flight_id_process_reservation_list}[1]
        Page Should Contain    ${reservation_flight_id_process_reservation_list}[2]
        Page Should Contain    ${reservation_flight_id_process_reservation_list}[3]
    END

Page Should Contain Flight Type Field
    [Arguments]    ${language}

    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_flight_en_flight_type_title}
        Page Should Contain    ${reservation_flight_en_flight_type_list}[0]
        Page Should Contain    ${reservation_flight_en_flight_type_list}[1]
        Page Should Contain    ${reservation_flight_en_flight_type_list}[2]
    ELSE
        Page Should Contain    ${reservation_flight_id_flight_type_title}
        Page Should Contain    ${reservation_flight_id_flight_type_list}[0]
        Page Should Contain    ${reservation_flight_id_flight_type_list}[1]
        Page Should Contain    ${reservation_flight_id_flight_type_list}[2]
    END

    Page Should Contain Element    ${reservation_flight_arrival_button}
    Page Should Contain Element    ${reservation_flight_departure_button}
    Page Should Contain Element    ${reservation_flight_transfer_button}

Page Should Contain Flight Information Field
    [Arguments]    ${language}    ${flight_type}

    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_flight_en_flight_info_title}

        IF    "${flight_type}" == "${FLIGHT_TYPE_ARRIVAL}" or "${flight_type}" == "${FLIGHT_TYPE_DEPARTURE}"
            Page Should Contain    ${reservation_flight_en_flight_info_origin_label}
            Page Should Contain    ${reservation_flight_en_flight_info_destination_label}
        ELSE
            Page Should Contain    ${reservation_flight_en_flight_info_origin_label}
            Page Should Contain    ${reservation_flight_en_flight_info_transfer_label}
        END

        Page Should Contain    ${reservation_flight_en_flight_info_airline_label}
        Page Should Contain    ${reservation_flight_en_flight_info_flight_number_label}

        IF    "${flight_type}" == "${FLIGHT_TYPE_DEPARTURE}"
            Page Should Contain    ${reservation_flight_en_flight_info_departure_date_label}
            Page Should Contain    ${reservation_flight_en_flight_info_departure_time_label}
        ELSE IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_en_flight_info_arrival_date_label}
            Page Should Contain    ${reservation_flight_en_flight_info_arrival_time_label}
        ELSE
            Page Should Contain    ${reservation_flight_en_flight_info_arrival_date_label}
            Page Should Contain    ${reservation_flight_en_flight_info_arrival_time_label}
        END

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_en_arrival_info_title}
            Page Should Contain    ${reservation_flight_en_flight_info_destination_label}
            Page Should Contain    ${reservation_flight_en_flight_info_departure_date_label}
            Page Should Contain    ${reservation_flight_en_flight_info_departure_time_label}
        END
    ELSE
        Page Should Contain    ${reservation_flight_id_flight_info_title}

        IF    "${flight_type}" == "${FLIGHT_TYPE_ARRIVAL}" or "${flight_type}" == "${FLIGHT_TYPE_DEPARTURE}"
            Page Should Contain    ${reservation_flight_id_flight_info_origin_label}
            Page Should Contain    ${reservation_flight_id_flight_info_destination_label}
        ELSE
            Page Should Contain    ${reservation_flight_id_flight_info_origin_label}
            Page Should Contain    ${reservation_flight_id_flight_info_transfer_label}
        END

        Page Should Contain    ${reservation_flight_id_flight_info_airline_label}
        Page Should Contain    ${reservation_flight_id_flight_info_flight_number_label}

        IF    "${flight_type}" == "${FLIGHT_TYPE_ARRIVAL}"
            Page Should Contain    ${reservation_flight_id_flight_info_arrival_date_label}
            Page Should Contain    ${reservation_flight_id_flight_info_arrival_time_label}
        ELSE IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_id_flight_info_arrival_date_label}
            Page Should Contain    ${reservation_flight_id_flight_info_arrival_time_label}
        ELSE
            Page Should Contain    ${reservation_flight_id_flight_info_departure_date_label}
            Page Should Contain    ${reservation_flight_id_flight_info_departure_time_label}
        END

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_id_arrival_info_title}
            Page Should Contain    ${reservation_flight_id_flight_info_destination_label}
            Page Should Contain    ${reservation_flight_id_flight_info_departure_date_label}
            Page Should Contain    ${reservation_flight_id_flight_info_departure_time_label}
        END
    END

    Page Should Contain Element    ${reservation_flight_origin_input}
    Page Should Contain Element    ${reservation_flight_destination_input}
    Page Should Contain Element    ${reservation_flight_flight_info_airline_select_input}
    Page Should Contain Element    ${reservation_flight_flight_info_airline_code}
    Page Should Contain Element    ${reservation_flight_flight_info_flight_number_input}
    Page Should Contain Element    ${reservation_flight_flight_info_date_input}
    Page Should Contain Element    ${reservation_flight_flight_info_time_input}

    IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
        Page Should Contain Element    ${homepage_reservation_transfer_input}
        Page Should Contain Element    ${reservation_flight_arrival_info_airline_select_input}
        Page Should Contain Element    ${reservation_flight_arrival_info_airline_code}
        Page Should Contain Element    ${reservation_flight_arrival_info_flight_number_input}
        Page Should Contain Element    ${reservation_flight_arrival_info_date_input}
        Page Should Contain Element    ${reservation_flight_arrival_info_time_input}
    END

Page Should Contain Product Field
    [Arguments]    ${language}    ${flight_type}    ${mag_type}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_flight_en_product_title}

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_en_product_transfer_title}
            Page Should Contain    ${reservation_flight_en_product_transfer_description}
            # TODO: nambah berdasarkan origin dan destination
        ELSE IF    "${mag_type}" == "${empty}"
            Page Should Contain    ${reservation_flight_en_product_not_available_label}
        END
    ELSE
        Page Should Contain    ${reservation_flight_id_product_title}

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_flight_id_product_transfer_title}
            Page Should Contain    ${reservation_flight_id_product_transfer_description}
            # TODO: nambah berdasarkan origin dan destination
        ELSE IF    "${mag_type}" == "${empty}"
            Page Should Contain    ${reservation_flight_id_product_not_available_label}
        END
    END

The "Reservation" page display correctly
    [Arguments]    ${language}    ${flight_type}    ${mag_type}=${empty}

    Page Should Contain Header Reservation    ${language}
    Page Should Contain Process Reservation    ${language}

    Page Should Contain Flight Type Field    ${language}
    Page Should Contain Flight Information Field    ${language}    ${flight_type}
    Page Should Contain Product Field    ${language}    ${flight_type}    ${mag_type}

    Page Should Contain Button    ${reservation_flight_cancel_button}
    Page Should Contain Button    ${reservation_flight_next_button}

    Page Should Contain Support Footer    ${language}
    Page Should Contain Main Footer    ${language}

User located in "Reservation" Page
    Common.Navigate To Location    ${start_url}    ${path_reservation}
    Wait Until Page Contains    ${reservation_flight_en_new_reservation_title}

The "Arrival" is selected as "Flight Type"
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_arrival_button}    style
    ${color} =    evaluate    re.search("background: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${color_is_selected}

Departure is selected as Flight Type
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_departure_button}    style
    ${color} =    evaluate    re.search("background: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${color_is_selected}

Transfer is selected as Flight Type
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_transfer_button}    style
    ${color} =    evaluate    re.search("background: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${color_is_selected}

The "Origin" field is filled with
    [Arguments]    ${airport}
    Element Should Contain
    ...    ${reservation_flight_origin_text_field}
    ...    ${airport}

The Transfer field is filled with
    [Arguments]    ${airport}
    Element Should Contain
    ...    ${reservation_flight_transfer_text_field}
    ...    ${airport}

The "Destination" field is filled with
    [Arguments]    ${airport}    ${flight_type}=${empty}
    Element Should Contain
    ...    ${reservation_flight_destination_text_field}
    ...    ${airport}

The "Arrival Date" field is filled with
    [Arguments]    ${date}    ${month}    ${year}
    Element Should Contain Date    ${reservation_flight_flight_info_date_input}    ${date}    ${month}    ${year}

The Departure Date field is filled with
    [Arguments]    ${date}    ${month}    ${year}
    Element Should Contain Date    ${reservation_flight_arrival_info_date_input}    ${date}    ${month}    ${year}

The "Products" field contain MEET & GREET INTERNATIONAL and its description
    Page Should Contain    ${reservation_flight_en_product_mag_inter_title}
    Page Should Contain    ${reservation_flight_en_product_mag_inter_description}

The "Products" field contain MEET & GREET DOMESTIC and its description
    Page Should Contain    ${reservation_flight_en_product_mag_domestic_title}
    Page Should Contain    ${reservation_flight_en_product_mag_domestic_description}

Set Airport
    [Arguments]    ${airport}
    Set Global Variable
    ...    ${selected_airport}
    ...    //div[contains(text(), "${airport}")]

Set Airline
    [Arguments]    ${airline}
    Set Global Variable
    ...    ${selected_airline}
    ...    //div[contains(text(), "${airline}")]

Search and select the airport in the "Origin" field
    [Arguments]    ${keyword}    ${airport}    ${flight_type}=${empty}
    Input Text    ${reservation_flight_origin_input}    ${keyword}
    Wait Until Page Contains    ${airport}    20s
    Set Airport    ${airport}
    Click Element    ${selected_airport}

Search and select the airport in the "Destination" field
    [Arguments]    ${keyword}    ${airport}    ${flight_type}=${empty}
    Input Text    ${reservation_flight_destination_input}    ${keyword}
    Wait Until Page Contains    ${airport}    20s
    Set Airport    ${airport}
    Click Element    ${selected_airport}

Search and select the airport in the "Airline" field
    [Arguments]    ${keyword}    ${airline}
    Input Text    ${reservation_flight_flight_info_airline_select_input}    ${keyword}
    Wait Until Page Contains    ${airline}    20s
    Set Airline    ${airline}
    Click Element    ${selected_airline}

User has filled in the Flight form correctly
    [Arguments]
    ...    ${origin_airport}
    ...    ${destination_airport}
    ...    ${airline}
    ...    ${flight_number}
    ...    ${arrival_date}
    ...    ${est_arrival_time}
    User located in "Reservation" page
    Click Element    ${reservation_flight_arrival_button}

    ReservationFlightPage.Search and select the airport in the "Origin" field
    ...    ${origin_airport}[keyword]
    ...    ${origin_airport}[airport]

    ReservationFlightPage.Search and select the airport in the "Destination" field
    ...    ${destination_airport}[keyword]
    ...    ${destination_airport}[airport]

    ReservationFlightPage.Search and select the airport in the "Airline" field
    ...    ${airline}[keyword]
    ...    ${airline}[airline]

    Input Text    ${reservation_flight_flight_info_flight_number_input}    ${flight_number}
    Input Text    ${reservation_flight_flight_info_date_input}    ${arrival_date}
    Input Text    ${reservation_flight_flight_info_time_input}    ${est_arrival_time}

    Click Element    ${reservation_flight_products}
    Click Button    ${reservation_flight_next_button}
    ReservationPassengerPage.The "Passenger" form display correctly    ${LANGUAGE_DEFAULT}

Checkmark in Flight Section is Green
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_checkmark_flight}    style
    ${color} =    evaluate    re.search("background-color: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${checkmark_green}

Checkmark in Passenger Section is Green
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_checkmark_passenger}    style
    ${color} =    evaluate    re.search("background-color: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${checkmark_green}

Checkmark in Order Extras Section is Green
    ${style} =    SeleniumLibrary.Get Element Attribute    ${reservation_flight_checkmark_orderextras}    style
    ${color} =    evaluate    re.search("background-color: *(.*?);", '''${style}''').group(1)
    Should Be Equal    ${color}    ${checkmark_green}

Show "Not Available" in "Products" field
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_flight_en_product_not_available_label}
    ELSE
        Page Should Contain    ${reservation_flight_id_product_not_available_label}
    END

Get "Flight" data
    ${origin} =    Get Text    ${reservation_flight_origin_text_field}
    ${destination} =    Get Text    ${reservation_flight_destination_text_field}
    ${arrival_airline} =    Get Text    ${reservation_flight_flight_info_airline_text_field}
    ${arrival_airline_code} =    Get Text    ${reservation_flight_flight_info_airline_code}
    ${arrival_flight_number} =    Get Element Attribute
    ...    ${reservation_flight_flight_info_flight_number_input}
    ...    value
    ${arrival_date} =    Get Element Attribute    ${reservation_flight_flight_info_date_input}    value
    ${arrival_time} =    Get Element Attribute    ${reservation_flight_flight_info_time_input}    value
