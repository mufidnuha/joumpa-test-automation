*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${homepage_banner_field}                                //*[@id="root"]/div[3]/div/div[1]/div[1]/div/div/div/div[2]/div/div

# Reservation Field
${homepage_reservation_arrival_button}                  //div[@class="jumbotron-title"]//div[@class="button"][1]
${homepage_reservation_departure_button}                //div[@class="jumbotron-title"]//div[@class="button"][2]
${homepage_reservation_transfer_button}                 //div[@class="jumbotron-title"]//div[@class="button"][3]
${homepage_reservation_origin_input}                    //input[@name="airport_id_from"]//preceding-sibling::div//input
${homepage_reservation_destination_input}               //input[@name="airport_id_to"]//preceding-sibling::div//input
${homepage_reservation_transfer_input}                  //input[@name="airport_id_transfer"]//preceding-sibling::div//input
${homepage_reservation_arrival_date_input}              //input[@name="date"]
${homepage_reservation_departure_date_input}            //input[@name="date_transfer_to"]
${homepage_reservation_booking_button}                  //div[@class="jumbotron-title"]//button

${airport}                                              ""
${selected_airport} =                                   /div[contains(text(), ${airport})]

${homepage_en_reservation_header}                       Make Reservation Now!
${homepage_en_reservation_header_2}                     Let's make your journey stay comfortable
${homepage_en_reservation_arrival_button_label}         Arrival
${homepage_en_reservation_departure_button_label}       Departure
${homepage_en_reservation_transfer_button_label}        Transfer
${homepage_en_reservation_origin_label}                 Origin
${homepage_en_reservation_destination_label}            Destination
${homepage_en_reservation_arrival_date_label}           Arrival Date

${homepage_id_reservation_header}                       Buat Reservasi Sekarang
${homepage_id_reservation_header_2}                     Untuk perjalananmu menjadi lebih nyaman
${homepage_id_reservation_arrival_button_label}         Kedatangan
${homepage_id_reservation_departure_button_label}       Keberangkatan
${homepage_id_reservation_transfer_button_label}        Transfer
${homepage_id_reservation_origin_label}                 Asal
${homepage_id_reservation_destination_label}            Tujuan
${homepage_id_reservation_arrival_date_label}           Tanggal Kedatangan

# Why Joumpa Field
${homepage_en_why_joumpa_header}                        Why Joumpa?
${homepage_en_why_joumpa_header_2}                      These are why you should choose Joumpa
@{homepage_en_why_joumpa_list}                          Supported by the largest ground handling in Indonesia
...                                                     Serving in 40+ Airports in Indonesia
...                                                     Certified and Well-trained staffs
...                                                     Authorized to access the airport
...                                                     Navigating your journey with Our Innovative System
...                                                     Easy to access, available on web and mobile apps
...                                                     Contact Center Assistance

${homepage_id_why_joumpa_header}                        Kenapa Joumpa?
${homepage_id_why_joumpa_header_2}                      Alasan mengapa Anda harus memilih Joumpa
@{homepage_id_why_joumpa_list}                          Didukung dengan ground handling terbesar di Indonesia
...                                                     Melayani di 40+ Bandara di Indonesia
...                                                     Bersertifikat dan staf yang terlatih
...                                                     Terpercaya untuk mengakses Bandara
...                                                     Menavigasi perjalanan Anda dengan Sistem Inovatif Kami
...                                                     Mudah diakses, tersedia di web dan aplikasi seluler
...                                                     Bantuan Contact Center

# Services Field
${homepage_services_meet_and_greet_arrow}               //section[@id="services"]//div[contains(text(), "Meet and Greet")]/following::span[1]
${homepage_services_transfer_arrow}                     //section[@id="services"]//div[contains(text(), "Transfer")]/following::span[1]

${homepage_en_services_header}                          The service you won’t regret
${homepage_en_services_header_2}                        We serve for your best journey experience
@{homepage_en_services_list}                            Meet and Greet
...                                                     Transfer
@{homepage_en_services_desc_list}
...                                                     This service is provided to help you go through airport procedures ...
...                                                     We provide convenience for you when transferring between or...

${homepage_id_services_header}                          Layanan Tanpa Penyesalan
${homepage_id_services_header_2}                        Kami melayani untuk pengalaman perjalanan terbaik Anda
@{homepage_id_services_list}                            Meet and Greet
...                                                     Transfer
@{homepage_id_services_desc_list}
...                                                     Layanan ini disediakan untuk membantu Anda melewati prosedur bandara ...
...                                                     Kami memberikan kemudahan bagi Anda saat melakukan transfer antar atau...
# Partner Field
${homepage_partners_list}                               //*[@id="partners"]/div[2]/div[2]/div/div[2]/div/div/div[1]/div
${homepage_partners_header}                             We Have More Than 100+ Partners
${homepage_partners_slick}                              //*[@id="partners"]/div[2]/div[4]/ul/li[1]/div


*** Keywords ***
Page Should Contain Reservation In English
    Page Should Contain    ${homepage_en_reservation_header}
    Page Should Contain    ${homepage_en_reservation_header_2}
    Page Should Contain    ${homepage_en_reservation_arrival_button_label}
    Page Should Contain    ${homepage_en_reservation_departure_button_label}
    Page Should Contain    ${homepage_en_reservation_transfer_button_label}
    Page Should Contain    ${homepage_en_reservation_origin_label}
    Page Should Contain    ${homepage_en_reservation_destination_label}
    Page Should Contain    ${homepage_en_reservation_arrival_date_label}

Page Should Contain Reservation In Indonesian
    Page Should Contain    ${homepage_id_reservation_header}
    Page Should Contain    ${homepage_id_reservation_header_2}
    Page Should Contain    ${homepage_id_reservation_arrival_button_label}
    Page Should Contain    ${homepage_id_reservation_departure_button_label}
    Page Should Contain    ${homepage_id_reservation_transfer_button_label}
    Page Should Contain    ${homepage_id_reservation_origin_label}
    Page Should Contain    ${homepage_id_reservation_destination_label}
    Page Should Contain    ${homepage_id_reservation_arrival_date_label}

Page Should Contain Reservation Field
    [Arguments]    ${LANGUAGE_DEFAULT}

    Page Should Contain Element    ${homepage_reservation_arrival_button}
    Page Should Contain Element    ${homepage_reservation_departure_button}
    Page Should Contain Element    ${homepage_reservation_transfer_button}
    Page Should Contain Element    ${homepage_reservation_origin_input}
    Page Should Contain Element    ${homepage_reservation_destination_input}
    Page Should Contain Element    ${homepage_reservation_arrival_date_input}
    Page Should Contain Button    ${homepage_reservation_booking_button}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Reservation In English
    ELSE
        Page Should Contain Reservation In Indonesian
    END

Page Should Contain Why Joumpa In English
    Page Should Contain    ${homepage_en_why_joumpa_header}
    Page Should Contain    ${homepage_en_why_joumpa_list}[0]
    Page Should Contain    ${homepage_en_why_joumpa_list}[1]
    Page Should Contain    ${homepage_en_why_joumpa_list}[2]
    Page Should Contain    ${homepage_en_why_joumpa_list}[3]
    Page Should Contain    ${homepage_en_why_joumpa_list}[4]
    Page Should Contain    ${homepage_en_why_joumpa_list}[5]
    Page Should Contain    ${homepage_en_why_joumpa_list}[6]

Page Should Contain Why Joumpa In Indonesian
    Page Should Contain    ${homepage_id_why_joumpa_header}
    Page Should Contain    ${homepage_id_why_joumpa_header_2}
    Page Should Contain    ${homepage_id_why_joumpa_list}[0]
    Page Should Contain    ${homepage_id_why_joumpa_list}[1]
    Page Should Contain    ${homepage_id_why_joumpa_list}[2]
    Page Should Contain    ${homepage_id_why_joumpa_list}[3]
    Page Should Contain    ${homepage_id_why_joumpa_list}[4]
    Page Should Contain    ${homepage_id_why_joumpa_list}[5]
    Page Should Contain    ${homepage_id_why_joumpa_list}[6]

Page Should Contain Why Joumpa Field
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Why Joumpa In English
    ELSE
        Page Should Contain Why Joumpa In Indonesian
    END

Page Should Contain Services In English
    Page Should Contain    ${homepage_en_services_header}
    Page Should Contain    ${homepage_en_services_header_2}
    Page Should Contain    ${homepage_en_services_list}[0]
    Page Should Contain    ${homepage_en_services_list}[1]
    Page Should Contain    ${homepage_en_services_desc_list}[0]
    Page Should Contain    ${homepage_en_services_desc_list}[1]

Page Should Contain Services In Indonesian
    Page Should Contain    ${homepage_id_services_header}
    Page Should Contain    ${homepage_id_services_header_2}
    Page Should Contain    ${homepage_id_services_list}[0]
    Page Should Contain    ${homepage_id_services_list}[1]
    Page Should Contain    ${homepage_id_services_desc_list}[0]
    Page Should Contain    ${homepage_id_services_desc_list}[1]

Page Should Contain Services Field
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Element    ${homepage_services_meet_and_greet_arrow}
    Page Should Contain Element    ${homepage_services_transfer_arrow}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Services In English
    ELSE
        Page Should Contain Services In Indonesian
    END

Page Should Contain Partners Field
    Page Should Contain    ${homepage_partners_header}
    Page Should Contain Element    ${homepage_partners_list}
    Page Should Contain Element    ${homepage_partners_slick}

Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}

    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    Page Should Contain Element    ${homepage_banner_field}
    Page Should Contain Reservation Field    ${LANGUAGE_DEFAULT}
    Page Should Contain Why Joumpa Field    ${LANGUAGE_DEFAULT}
    Page Should Contain Services Field    ${LANGUAGE_DEFAULT}
    Page Should Contain Partners Field

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}

User located in "Home" page
    Common.Navigate To Location    ${START_URL}    ${EMPTY}
    Wait Until Page Contains    ${homepage_en_reservation_header}
    ${LANGUAGE_DEFAULT}=    Get Text    ${header_language_active}

User located in "Home" page and language in English
    Common.Navigate To Location    ${START_URL}    ${EMPTY}
    Wait Until Page Contains    ${homepage_en_reservation_header}
    Click Element    ${header_language_active}
    Click Button    ${header_language_en_button}

User located in "Home" page and language in Indonesian
    Common.Navigate To Location    ${START_URL}    ${EMPTY}
    Wait Until Page Contains    ${homepage_en_reservation_header}
    Click Element    ${header_language_active}
    Click Button    ${header_language_en_button}

Set Airport
    [Arguments]    ${airport}
    Set Global Variable
    ...    ${selected_airport}
    ...    //div[contains(text(), "${airport}")]

Search and select the airport in the "Origin" field
    [Arguments]    ${keyword}    ${airport}    ${flight_type}=${EMPTY}
    Input Text    ${homepage_reservation_origin_input}    ${keyword}
    Wait Until Page Contains    ${airport}    20s

    IF    "${flight_type}" == "${reservation_flight_en_flight_type_list}[2]"
        Set Airport    ${airport}
        Click Element    ${selected_airport}
    ELSE
        Set Airport    ${airport}
        Click Element    ${selected_airport}
    END

Search and select the airport in the "Destination" field
    [Arguments]    ${keyword}    ${airport}    ${flight_type}=${EMPTY}
    Input Text    ${homepage_reservation_destination_input}    ${keyword}
    Wait Until Page Contains    ${airport}
    IF    "${flight_type}" == "${reservation_flight_en_flight_type_list}[2]"
        Set Airport    ${airport}
        Click Element    ${selected_airport}
    ELSE
        Set Airport    ${airport}
        Click Element    ${selected_airport}
    END

Search and select the airport in the Transfer field
    [Arguments]    ${keyword}    ${airport}    ${flight_type}=${EMPTY}
    Input Text    ${homepage_reservation_transfer_input}    cgk
    Wait Until Page Contains    ${airport}
    Set Airport    ${airport}
    Click Element    ${selected_airport}

Input date in "Arrival Date" field
    [Arguments]    ${arrival_date}
    Input Text    ${homepage_reservation_arrival_date_input}    ${arrival_date}

Input date in Departure Date field
    [Arguments]    ${departure_date}
    Input Text    ${homepage_reservation_departure_date_input}    ${departure_date}
