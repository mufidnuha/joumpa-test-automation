*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${reservation_checkout_en_booking_resume} =                                 Booking Resume
${reservation_checkout_en_flight_type} =                                    Flight Type
${reservation_checkout_en_arrival_airline} =                                Arrival Airline / No.
${reservation_checkout_en_departure_airline} =                              Departure Airline / No.
${reservation_checkout_en_origin} =                                         Origin
${reservation_checkout_en_transfer} =                                       Transfer
${reservation_checkout_en_destination} =                                    Destination
${reservation_checkout_en_est_time_arrival} =                               Estimate Time Arrival
${reservation_checkout_en_est_time_departure} =                             Estimate Time Departure
${reservation_checkout_en_order_extras} =                                   Order Extras
${reservation_checkout_en_lounge} =                                         Lounge
${reservation_checkout_en_transportation} =                                 Transportation
${reservation_checkout_en_detail_price} =                                   Detail Price
${reservation_checkout_en_voucher} =                                        Voucher
${reservation_checkout_en_grand_total} =                                    Grand Total
${reservation_checkout_en_service_price} =                                  Price Service
${reservation_checkout_en_terms_and_condition} =                            Terms and Condition
${reservation_checkout_en_agreed_terms} =                                   Yes, I have read and accepted the
${reservation_checkout_en_agreed_services} =                                Yes, I agree to the purchase of
${reservation_checkout_en_none} =                                           None

${reservation_checkout_id_booking_resume} =                                 Booking Resume
${reservation_checkout_id_flight_type} =                                    Jenis Penerbangan
${reservation_checkout_id_arrival_airline} =                                Pesawat Kedatangan / No.
${reservation_checkout_id_departure_airline} =                              Pesawat Keberangkatan / No.
${reservation_checkout_id_origin} =                                         Asal
${reservation_checkout_id_transfer} =                                       Transfer
${reservation_checkout_id_destination} =                                    Tujuan
${reservation_checkout_id_est_time_arrival} =                               Perkiraan Waktu Kedatangan
${reservation_checkout_id_est_time_departure} =                             Perkiraan Waktu Keberangkatan
${reservation_checkout_id_order_extras} =                                   Layanan Tambahan
${reservation_checkout_id_lounge} =                                         Ruang Tunggu
${reservation_checkout_id_transportation} =                                 Transportasi
${reservation_checkout_id_detail_price} =                                   Rincian Biaya
${reservation_checkout_id_voucher} =                                        Voucher
${reservation_checkout_id_grand_total} =                                    Total Biaya
${reservation_checkout_id_service_price} =                                  Harga Layanan
${reservation_checkout_id_terms_and_condition} =                            Syarat dan Ketentuan
${reservation_checkout_id_agreed_terms} =                                   Ya, Saya telah membaca dan menerima
${reservation_checkout_id_agreed_services} =                                Ya, Saya setuju untuk pembelian layanan
${reservation_checkout_id_none} =                                           Tidak ada

${reservation_checkout_non_refundable} =                                    Non-Refundable Booking

${reservation_checkout_flight_type_value} =                                 //div[@class="side-menu-detail"]//div[@class="row py-3 "][1]/div[2]
${reservation_checkout_arrival_airline_value} =                             //div[@class="side-menu-detail"]//div[@class="row py-3 "][2]/div[2]
${reservation_checkout_en_departure_airline_value} =                        //div[contains(text(), "${reservation_checkout_en_departure_airline}")]//following-sibling::div
${reservation_checkout_id_departure_airline_value} =                        //div[contains(text(), "${reservation_checkout_id_departure_airline}")]//following-sibling::div
${reservation_checkout_en_origin_value} =                                   //div[contains(text(), "${reservation_checkout_en_origin}")]//following-sibling::div
${reservation_checkout_id_origin_value} =                                   //div[contains(text(), "${reservation_checkout_id_origin}")]//following-sibling::div
${reservation_checkout_en_transfer_value} =                                 //div[contains(text(), "${reservation_checkout_en_transfer}")]//following-sibling::div
${reservation_checkout_id_transfer_value} =                                 //div[contains(text(), "${reservation_checkout_id_transfer}")]//following-sibling::div
${reservation_checkout_en_destination_value} =                              //div[contains(text(), "${reservation_checkout_en_destination}")]//following-sibling::div
${reservation_checkout_id_destination_value} =                              //div[contains(text(), "${reservation_checkout_id_destination}")]//following-sibling::div
${reservation_checkout_en_est_time_arrival_value} =                         //div[contains(text(), "${reservation_checkout_en_est_time_arrival}")]//following-sibling::div
${reservation_checkout_id_est_time_arrival_value} =                         //div[contains(text(), "${reservation_checkout_id_est_time_arrival}")]//following-sibling::div
${reservation_checkout_en_est_time_departure_value} =                       //div[contains(text(), "${reservation_checkout_en_est_time_departure}")]//following-sibling::div
${reservation_checkout_id_est_time_departure_value} =                       //div[contains(text(), "${reservation_checkout_id_est_time_departure}")]//following-sibling::div

${reservation_checkout_en_lounge_value} =                                   //div[contains(text(), "${reservation_checkout_en_order_extras}")]/following-sibling::div/div[1]/div[2]/div[2]
${reservation_checkout_en_transporation_value} =                            //div[contains(text(), "${reservation_checkout_en_order_extras}")]/following-sibling::div/div[3]/div[2]/div[2]
${reservation_checkout_id_lounge_value} =                                   //div[contains(text(), "${reservation_checkout_id_order_extras}")]/following-sibling::div/div[1]/div[2]/div[2]
${reservation_checkout_id_transporation_value} =                            //div[contains(text(), "${reservation_checkout_id_order_extras}")]/following-sibling::div/div[3]/div[2]/div[2]

${reservation_checkout_id_detail_price_grand_total} =                       //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[2]/div[2]
${reservation_checkout_id_detail_price_price_service_total} =               //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]//span[1]
${reservation_checkout_id_detail_price_price_service_expand} =              //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]//span[2]
${reservation_checkout_id_detail_price_price_service_adult_number} =        //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[3]/div[2]/div
${reservation_checkout_id_detail_price_price_service_adult_price} =         //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[3]/div[2]//span
${reservation_checkout_id_detail_price_price_service_child_number} =        //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[5]/div[2]/div
${reservation_checkout_id_detail_price_price_service_child_price} =         //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[5]/div[2]//span
${reservation_checkout_id_detail_price_price_service_infant_number} =       //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[7]/div[2]/div
${reservation_checkout_id_detail_price_price_service_infant_price} =        //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[7]/div[2]//span
${reservation_checkout_id_detail_price_lounge_total} =                      //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[1]
${reservation_checkout_id_detail_price_lounge_expand} =                     //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[2]
${reservation_checkout_id_detail_price_lounge_adult_number} =               //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[3]/div[2]/div
${reservation_checkout_id_detail_price_lounge_adult_price} =                //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[3]/div[2]//span
${reservation_checkout_id_detail_price_lounge_child_number} =               //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[5]/div[2]/div
${reservation_checkout_id_detail_price_lounge_child_price} =                //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[5]/div[2]//span
${reservation_checkout_id_detail_price_lounge_infant_number} =              //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[7]/div[2]/div
${reservation_checkout_id_detail_price_lounge_infant_price} =               //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[7]/div[2]//span

${reservation_checkout_id_detail_price_transportation_total} =              //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[5]/div[2]

${reservation_checkout_en_detail_price_grand_total_total} =                 //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[2]/div[2]
${reservation_checkout_en_detail_price_price_service_total} =               //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]//span[1]
${reservation_checkout_en_detail_price_price_service_expand} =              //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]//span[2]
${reservation_checkout_en_detail_price_price_service_adult_number} =        //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[3]/div[2]/div
${reservation_checkout_en_detail_price_price_service_adult_price} =         //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[3]/div[2]//span
${reservation_checkout_en_detail_price_price_service_child_number} =        //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[5]/div[2]/div
${reservation_checkout_en_detail_price_price_service_child_price} =         //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[5]/div[2]//span
${reservation_checkout_en_detail_price_price_service_infant_number} =       //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[7]/div[2]/div
${reservation_checkout_en_detail_price_price_service_infant_price} =        //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[7]/div[2]//span
${reservation_checkout_en_detail_price_lounge_total} =                      //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[1]
${reservation_checkout_en_detail_price_lounge_expand} =                     //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[2]
${reservation_checkout_en_detail_price_lounge_adult_number} =               //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[3]/div[2]/div
${reservation_checkout_en_detail_price_lounge_adult_price} =                //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[3]/div[2]//span
${reservation_checkout_en_detail_price_lounge_child_number} =               //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[5]/div[2]/div
${reservation_checkout_en_detail_price_lounge_child_price} =                //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[5]/div[2]//span
${reservation_checkout_en_detail_price_lounge_infant_number} =              //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[7]/div[2]/div
${reservation_checkout_en_detail_price_lounge_infant_price} =               //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[7]/div[2]//span

${reservation_checkout_en_detail_price_transportation_total} =              //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[5]/div[2]

${reservation_checkout_agreed_terms_checkbox} =                             //input[@name="agreed_terms"]
${reservation_checkout_agreed_purchased_checkbox} =                         //input[@name="agreed_purchase"]

${reservation_checkout_back_button} =                                       //div[@style="float: right;"]//button[1]
${reservation_checkout_checkout_button} =                                   //div[@style="float: right;"]//button[2]


*** Keywords ***
Page Should Contain Booking Resume
    [Arguments]    ${language}    ${flight_type}=${EMPTY}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_booking_resume}
        Page Should Contain    ${reservation_checkout_en_flight_type}
        Page Should Contain    ${reservation_checkout_en_arrival_airline}
        Page Should Contain    ${reservation_checkout_en_origin}
        Page Should Contain    ${reservation_checkout_en_destination}
        Page Should Contain    ${reservation_checkout_en_est_time_arrival}

        Page Should Contain Element    ${reservation_checkout_en_origin_value}
        Page Should Contain Element    ${reservation_checkout_en_destination_value}
        Page Should Contain Element    ${reservation_checkout_en_est_time_arrival_value}

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_checkout_en_transfer}
            Page Should Contain    ${reservation_checkout_en_departure_airline}
            Page Should Contain    ${reservation_checkout_en_est_time_departure}
            Page Should Contain Element    ${reservation_checkout_en_departure_airline_value}
            Page Should Contain Element    ${reservation_checkout_en_transfer_value}
            Page Should Contain Element    ${reservation_checkout_en_est_time_departure_value}
        END
    ELSE
        Page Should Contain    ${reservation_checkout_id_booking_resume}
        Page Should Contain    ${reservation_checkout_id_flight_type}
        Page Should Contain    ${reservation_checkout_id_arrival_airline}
        Page Should Contain    ${reservation_checkout_id_origin}
        Page Should Contain    ${reservation_checkout_id_destination}
        Page Should Contain    ${reservation_checkout_id_est_time_arrival}

        Page Should Contain Element    ${reservation_checkout_id_origin_value}
        Page Should Contain Element    ${reservation_checkout_id_destination_value}
        Page Should Contain Element    ${reservation_checkout_id_est_time_arrival_value}

        IF    "${flight_type}" == "${FLIGHT_TYPE_TRANSFER}"
            Page Should Contain    ${reservation_checkout_id_transfer}
            Page Should Contain    ${reservation_checkout_id_departure_airline}
            Page Should Contain    ${reservation_checkout_id_est_time_departure}
            Page Should Contain Element    ${reservation_checkout_id_departure_airline_value}
            Page Should Contain Element    ${reservation_checkout_id_transfer_value}
            Page Should Contain Element    ${reservation_checkout_id_est_time_departure_value}
        END
    END

    Page Should Contain    ${reservation_checkout_non_refundable}
    Page Should Contain Element    ${reservation_checkout_flight_type_value}
    Page Should Contain Element    ${reservation_checkout_arrival_airline_value}

Page Should Contain Order Extras
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_order_extras}
        Page Should Contain    ${reservation_checkout_en_lounge}
        Page Should Contain    ${reservation_checkout_en_transportation}
    ELSE
        Page Should Contain    ${reservation_checkout_id_order_extras}
        Page Should Contain    ${reservation_checkout_id_lounge}
        Page Should Contain    ${reservation_checkout_id_transportation}
    END

Page Should Contain Detail Price
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_detail_price}
        Page Should Contain    ${reservation_checkout_en_voucher}
        Page Should Contain    ${reservation_checkout_en_grand_total}
        Page Should Contain    ${reservation_checkout_en_service_price}

        Page Should Contain Element    ${reservation_checkout_en_detail_price_grand_total_total}
        Page Should Contain Element    ${reservation_checkout_en_detail_price_price_service_total}
        Page Should Contain Element    ${reservation_checkout_en_detail_price_price_service_expand}
    ELSE
        Page Should Contain    ${reservation_checkout_id_detail_price}
        Page Should Contain    ${reservation_checkout_id_voucher}
        Page Should Contain    ${reservation_checkout_id_grand_total}
        Page Should Contain    ${reservation_checkout_id_service_price}

        Page Should Contain Element    ${reservation_checkout_id_detail_price_grand_total}
        Page Should Contain Element    ${reservation_checkout_id_detail_price_price_service_total}
        Page Should Contain Element    ${reservation_checkout_id_detail_price_price_service_expand}
    END

Page Should Contain Terms and Condition
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_terms_and_condition}
        Page Should Contain    ${reservation_checkout_en_agreed_terms}
        Page Should Contain    ${reservation_checkout_en_agreed_services}
    ELSE
        Page Should Contain    ${reservation_checkout_en_terms_and_condition}
        Page Should Contain    ${reservation_checkout_en_agreed_terms}
        Page Should Contain    ${reservation_checkout_en_agreed_services}
    END

    Page Should Contain Element    ${reservation_checkout_agreed_terms_checkbox}
    Page Should Contain Element    ${reservation_checkout_agreed_purchased_checkbox}

The "Check Out" page display correctly
    [Arguments]    ${language}
    Page Should Contain Header Reservation    ${language}
    Page Should Contain Process Reservation    ${language}

    Page Should Contain Booking Resume    ${language}
    Page Should Contain Order Extras    ${language}
    Page Should Contain Detail Price    ${language}
    Page Should Contain Terms and Condition    ${language}

    Page Should Contain Element    ${reservation_checkout_checkout_button}
    Page Should Contain Element    ${reservation_checkout_back_button}

    Page Should Contain Support Footer    ${language}
    Page Should Contain Main Footer    ${language}

    Checkmark in Flight Section is Green
    Checkmark in Passenger Section is Green
    Checkmark in Order Extras Section is Green
