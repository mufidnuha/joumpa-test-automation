*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${reservation_checkout_en_booking_resume}                               Booking Resume
${reservation_checkout_en_flight_type}                                  Flight Type
${reservation_checkout_en_arrival_airline}                              Arrival Airline / No.
${reservation_checkout_en_departure_airline}                            Departure Airline / No.
${reservation_checkout_en_origin}                                       Origin
${reservation_checkout_en_transfer}                                     Transfer
${reservation_checkout_en_destination}                                  Destination
${reservation_checkout_en_est_time_arrival}                             Estimate Time Arrival
${reservation_checkout_en_est_time_departure}                           Estimate Time Departure
${reservation_checkout_en_order_extras}                                 Order Extras
${reservation_checkout_en_lounge}                                       Lounge
${reservation_checkout_en_transportation}                               Transportation
${reservation_checkout_en_detail_price}                                 Detail Price
${reservation_checkout_en_voucher}                                      Voucher
${reservation_checkout_en_grand_total}                                  Grand Total
${reservation_checkout_en_service_price}                                Price Service
${reservation_checkout_en_terms_and_condition}                          Terms and Condition
${reservation_checkout_en_agreed_terms}                                 Yes, I have read and accepted the
${reservation_checkout_en_agreed_services}                              Yes, I agree to the purchase of
${reservation_checkout_en_none}                                         None

${reservation_checkout_id_booking_resume}                               Booking Resume
${reservation_checkout_id_flight_type}                                  Jenis Penerbangan
${reservation_checkout_id_arrival_airline}                              Pesawat Kedatangan / No.
${reservation_checkout_id_departure_airline}                            Pesawat Keberangkatan / No.
${reservation_checkout_id_origin}                                       Asal
${reservation_checkout_id_transfer}                                     Transfer
${reservation_checkout_id_destination}                                  Tujuan
${reservation_checkout_id_est_time_arrival}                             Perkiraan Waktu Kedatangan
${reservation_checkout_id_est_time_departure}                           Perkiraan Waktu Keberangkatan
${reservation_checkout_id_order_extras}                                 Layanan Tambahan
${reservation_checkout_id_lounge}                                       Ruang Tunggu
${reservation_checkout_id_transportation}                               Transportasi
${reservation_checkout_id_detail_price}                                 Rincian Biaya
${reservation_checkout_id_voucher}                                      Voucher
${reservation_checkout_id_grand_total}                                  Total Biaya
${reservation_checkout_id_service_price}                                Harga Layanan
${reservation_checkout_id_terms_and_condition}                          Syarat dan Ketentuan
${reservation_checkout_id_agreed_terms}                                 Ya, Saya telah membaca dan menerima
${reservation_checkout_id_agreed_services}                              Ya, Saya setuju untuk pembelian layanan
${reservation_checkout_id_none}                                         Tidak ada

${reservation_checkout_non_refundable}                                  Non-Refundable Booking

${reservation_checkout_flight_type_value}                               //div[@class="side-menu-detail"]//div[@class="row py-3 "][1]/div[2]
${reservation_checkout_arrival_airline_value}                           //div[@class="side-menu-detail"]//div[@class="row py-3 "][2]/div[2]
${reservation_checkout_en_departure_airline_value}                      //div[contains(text(), "${reservation_checkout_en_departure_airline}")]//following-sibling::div
${reservation_checkout_id_departure_airline_value}                      //div[contains(text(), "${reservation_checkout_id_departure_airline}")]//following-sibling::div
${reservation_checkout_en_origin_value}                                 //div[contains(text(), "${reservation_checkout_en_origin}")]//following-sibling::div
${reservation_checkout_id_origin_value}                                 //div[contains(text(), "${reservation_checkout_id_origin}")]//following-sibling::div
${reservation_checkout_en_transfer_value}                               //div[contains(text(), "${reservation_checkout_en_transfer}")]//following-sibling::div
${reservation_checkout_id_transfer_value}                               //div[contains(text(), "${reservation_checkout_id_transfer}")]//following-sibling::div
${reservation_checkout_en_destination_value}                            //div[contains(text(), "${reservation_checkout_en_destination}")]//following-sibling::div
${reservation_checkout_id_destination_value}                            //div[contains(text(), "${reservation_checkout_id_destination}")]//following-sibling::div
${reservation_checkout_en_est_time_arrival_value}                       //div[contains(text(), "${reservation_checkout_en_est_time_arrival}")]//following-sibling::div
${reservation_checkout_id_est_time_arrival_value}                       //div[contains(text(), "${reservation_checkout_id_est_time_arrival}")]//following-sibling::div
${reservation_checkout_en_est_time_departure_value}                     //div[contains(text(), "${reservation_checkout_en_est_time_departure}")]//following-sibling::div
${reservation_checkout_id_est_time_departure_value}                     //div[contains(text(), "${reservation_checkout_id_est_time_departure}")]//following-sibling::div

${reservation_checkout_en_lounge_value}                                 //div[contains(text(), "${reservation_checkout_en_order_extras}")]/following-sibling::div/div[1]/div[2]/div[2]
${reservation_checkout_en_transporation_value}                          //div[contains(text(), "${reservation_checkout_en_order_extras}")]/following-sibling::div/div[3]/div[2]/div[2]
${reservation_checkout_id_lounge_value}                                 //div[contains(text(), "${reservation_checkout_id_order_extras}")]/following-sibling::div/div[1]/div[2]/div[2]
${reservation_checkout_id_transporation_value}                          //div[contains(text(), "${reservation_checkout_id_order_extras}")]/following-sibling::div/div[3]/div[2]/div[2]

${reservation_checkout_id_detail_price_grand_total}                     //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[2]/div[2]
${reservation_checkout_id_detail_price_price_service_total}             //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]//span[1]
${reservation_checkout_id_detail_price_price_service_expand}            //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]//span[2]
${reservation_checkout_id_detail_price_price_service_adult_number}      //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[3]/div[2]/div
${reservation_checkout_id_detail_price_price_service_adult_price}       //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[3]/div[2]//span
${reservation_checkout_id_detail_price_price_service_child_number}      //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[5]/div[2]/div
${reservation_checkout_id_detail_price_price_service_child_price}       //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[5]/div[2]//span
${reservation_checkout_id_detail_price_price_service_infant_number}     //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[7]/div[2]/div
${reservation_checkout_id_detail_price_price_service_infant_price}      //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[3]/div[7]/div[2]//span
${reservation_checkout_id_detail_price_lounge_total}                    //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[1]
${reservation_checkout_id_detail_price_lounge_expand}                   //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[2]
${reservation_checkout_id_detail_price_lounge_adult_number}             //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[3]/div[2]/div
${reservation_checkout_id_detail_price_lounge_adult_price}              //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[3]/div[2]//span
${reservation_checkout_id_detail_price_lounge_child_number}             //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[5]/div[2]/div
${reservation_checkout_id_detail_price_lounge_child_price}              //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[5]/div[2]//span
${reservation_checkout_id_detail_price_lounge_infant_number}            //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[7]/div[2]/div
${reservation_checkout_id_detail_price_lounge_infant_price}             //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[4]/div[7]/div[2]//span

${reservation_checkout_id_detail_price_transportation_total}            //div[contains(text(), "${reservation_checkout_id_detail_price}")]//following-sibling::div[5]/div[2]

${reservation_checkout_en_detail_price_grand_total}                     //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[2]/div[2]
${reservation_checkout_en_detail_price_price_service_total}             //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]//span[1]
${reservation_checkout_en_detail_price_price_service_expand}            //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]//span[2]
${reservation_checkout_en_detail_price_price_service_adult_number}      //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[3]/div[2]/div
${reservation_checkout_en_detail_price_price_service_adult_price}       //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[3]/div[2]//span
${reservation_checkout_en_detail_price_price_service_child_number}      //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[5]/div[2]/div
${reservation_checkout_en_detail_price_price_service_child_price}       //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[5]/div[2]//span
${reservation_checkout_en_detail_price_price_service_infant_number}     //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[7]/div[2]/div
${reservation_checkout_en_detail_price_price_service_infant_price}      //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[3]/div[7]/div[2]//span
${reservation_checkout_en_detail_price_lounge_total}                    //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[1]
${reservation_checkout_en_detail_price_lounge_expand}                   //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[1]/div[2]/span[2]
${reservation_checkout_en_detail_price_lounge_adult_number}             //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[3]/div[2]/div
${reservation_checkout_en_detail_price_lounge_adult_price}              //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[3]/div[2]//span
${reservation_checkout_en_detail_price_lounge_child_number}             //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[5]/div[2]/div
${reservation_checkout_en_detail_price_lounge_child_price}              //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[5]/div[2]//span
${reservation_checkout_en_detail_price_lounge_infant_number}            //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[7]/div[2]/div
${reservation_checkout_en_detail_price_lounge_infant_price}             //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[4]/div[7]/div[2]//span

${reservation_checkout_en_detail_price_transportation_total}            //div[contains(text(), "${reservation_checkout_en_detail_price}")]//following-sibling::div[5]/div[2]

${reservation_checkout_agreed_terms_checkbox}                           //input[@name="agreed_terms"]
${reservation_checkout_agreed_purchased_checkbox}                       //input[@name="agreed_purchase"]

${reservation_checkout_back_button}                                     //div[@style="float: right;"]//button[1]
${reservation_checkout_checkout_button}                                 //div[@style="float: right;"]//button[2]

&{BOOKING_RESUME_DATA}                                                  flight_type=${EMPTY}
...                                                                     arrival_airline=${EMPTY}
...                                                                     arrival_flight_number=${EMPTY}
...                                                                     origin=${EMPTY}
...                                                                     destination=${EMPTY}
...                                                                     arrival_date=${EMPTY}
...                                                                     arrival_time=${EMPTY}

&{CHECKOUT_ORDER_EXTRAS_DATA}                                           lounge=${EMPTY}
...                                                                     transportation_region=${EMPTY}
...                                                                     transportation_car_type=${EMPTY}
...                                                                     transportation_total_unit=${EMPTY}

&{CHECKOUT_PRICE_SERVICE_DATA}
...                                                                     adult_number=${EMPTY}
...                                                                     child_number=${EMPTY}
...                                                                     infant_number=${EMPTY}
...                                                                     adult_price=${EMPTY}
...                                                                     child_price=${EMPTY}
...                                                                     infant_price=${EMPTY}
...                                                                     adult_total=${EMPTY}
...                                                                     child_total=${EMPTY}
...                                                                     infant_total=${EMPTY}

&{CHECKOUT_LOUNGE_DATA}
...                                                                     adult_number=${EMPTY}
...                                                                     child_number=${EMPTY}
...                                                                     infant_number=${EMPTY}
...                                                                     adult_price=${EMPTY}
...                                                                     child_price=${EMPTY}
...                                                                     infant_price=${EMPTY}
...                                                                     adult_total=${EMPTY}
...                                                                     child_total=${EMPTY}
...                                                                     infant_total=${EMPTY}
...                                                                     lounge_total=${EMPTY}

&{CHECKOUT_TRANSPORTATION_DATA}
...                                                                     unit=${EMPTY}
...                                                                     price=${EMPTY}
...                                                                     total=${EMPTY}


*** Keywords ***
Page Should Contain Booking Resume
    [Arguments]    ${LANGUAGE_DEFAULT}    ${flight_type}=${EMPTY}
    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
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
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_order_extras}
        Page Should Contain    ${reservation_checkout_en_lounge}
        Page Should Contain    ${reservation_checkout_en_transportation}
    ELSE
        Page Should Contain    ${reservation_checkout_id_order_extras}
        Page Should Contain    ${reservation_checkout_id_lounge}
        Page Should Contain    ${reservation_checkout_id_transportation}
    END

Page Should Contain Detail Price
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_checkout_en_detail_price}
        Page Should Contain    ${reservation_checkout_en_voucher}
        Page Should Contain    ${reservation_checkout_en_grand_total}
        Page Should Contain    ${reservation_checkout_en_service_price}

        Page Should Contain Element    ${reservation_checkout_en_detail_price_grand_total}
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
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
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
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header Reservation    ${LANGUAGE_DEFAULT}
    Page Should Contain Process Reservation    ${LANGUAGE_DEFAULT}

    Page Should Contain Booking Resume    ${LANGUAGE_DEFAULT}
    Page Should Contain Order Extras    ${LANGUAGE_DEFAULT}
    Page Should Contain Detail Price    ${LANGUAGE_DEFAULT}
    Page Should Contain Terms and Condition    ${LANGUAGE_DEFAULT}

    Page Should Contain Element    ${reservation_checkout_checkout_button}
    Page Should Contain Element    ${reservation_checkout_back_button}

    Page Should Contain Support Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}

    Checkmark in Flight Section is Green
    Checkmark in Passenger Section is Green
    Checkmark in Order Extras Section is Green

Get "Booking Resume" data in "Check Out" form
    [Arguments]    ${LANGUAGE_DEFAULT}=${LANGUAGE_DEFAULT}

    ${flight_type} =    Get Text    ${reservation_checkout_flight_type_value}
    ${arrival_airline_full} =    Get Text    ${reservation_checkout_arrival_airline_value}
    ${arrival_airline_full} =    Split String    ${arrival_airline_full}    ${SPACE}/${SPACE}
    ${arrival_airline} =    Set Variable    ${arrival_airline_full}[0]
    ${arrival_flight_number} =    Set Variable    ${arrival_airline_full}[1]

    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        ${origin} =    Get Text    ${reservation_checkout_en_origin_value}
        ${destination} =    Get Text    ${reservation_checkout_en_destination_value}
        ${est_time_arrival} =    Get Text    ${reservation_checkout_en_est_time_arrival_value}
    ELSE
        ${origin} =    Get Text    ${reservation_checkout_id_origin_value}
        ${destination} =    Get Text    ${reservation_checkout_id_destination_value}
        ${est_time_arrival} =    Get Text    ${reservation_checkout_id_est_time_arrival_value}
    END

    ${est_time_arrival} =    Split String    ${est_time_arrival}    ,${SPACE}
    ${arrival_date} =    Set Variable    ${est_time_arrival}[0]
    ${arrival_time} =    Set Variable    ${est_time_arrival}[1]

    Set To Dictionary    ${BOOKING_RESUME_DATA}
    ...    flight_type=${flight_type}
    ...    arrival_airline=${arrival_airline}
    ...    arrival_flight_number=${arrival_flight_number}
    ...    origin=${origin}
    ...    destination=${destination}
    ...    arrival_date=${arrival_date}
    ...    arrival_time=${arrival_time}
    ${BOOKING_RESUME_DATA} =    Convert Dictionary Values To Lowercase    &{BOOKING_RESUME_DATA}
    ${BOOKING_RESUME_DATA} =    Set Global Variable    ${BOOKING_RESUME_DATA}

Get "Order Extras" data in "Check Out" form
    [Arguments]    ${LANGUAGE_DEFAULT}=${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        ${lounge} =    Get Text    ${reservation_checkout_en_lounge_value}
        ${transportation} =    Get Text    ${reservation_checkout_en_transporation_value}
    ELSE
        ${lounge} =    Get Text    ${reservation_checkout_id_lounge_value}
        ${transportation} =    Get Text    ${reservation_checkout_id_transporation_value}
    END

    ${transportation} =    Split String    ${transportation}    ${SPACE}-${SPACE}
    ${region} =    Set Variable    ${transportation}[0]
    ${car_type_unit} =    Split String    ${transportation}[1]    ${SPACE}(
    ${car_type} =    Set Variable    ${car_type_unit}[0]
    ${total_unit} =    Remove String    ${car_type_unit}[1]    unit)    ${SPACE}

    Set To Dictionary
    ...    ${CHECKOUT_ORDER_EXTRAS_DATA}
    ...    lounge=${lounge}
    ...    transportation_region=${region}
    ...    transportation_car_type=${car_type}
    ...    transportation_total_unit=${total_unit}
    ${CHECKOUT_ORDER_EXTRAS_DATA} =    Convert Dictionary Values To Lowercase    &{CHECKOUT_ORDER_EXTRAS_DATA}
    ${CHECKOUT_ORDER_EXTRAS_DATA} =    Set Global Variable    ${CHECKOUT_ORDER_EXTRAS_DATA}

Get "Price Service" details in "Detail Price"
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        ${price_service_adult_number} =    Get Text
        ...    ${reservation_checkout_en_detail_price_price_service_adult_number}
        ${price_service_adult_price} =    Get Text    ${reservation_checkout_en_detail_price_price_service_adult_price}
        ${price_service_child_number} =    Get Text
        ...    ${reservation_checkout_en_detail_price_price_service_child_number}
        ${price_service_child_price} =    Get Text    ${reservation_checkout_en_detail_price_price_service_child_price}
        ${price_service_infant_number} =    Get Text
        ...    ${reservation_checkout_en_detail_price_price_service_infant_number}
        ${price_service_infant_price} =    Get Text
        ...    ${reservation_checkout_en_detail_price_price_service_infant_price}
    ELSE
        ${price_service_adult_number} =    Get Text
        ...    ${reservation_checkout_id_detail_price_price_service_adult_number}
        ${price_service_adult_price} =    Get Text    ${reservation_checkout_id_detail_price_price_service_adult_price}
        ${price_service_child_number} =    Get Text
        ...    ${reservation_checkout_id_detail_price_price_service_child_number}
        ${price_service_child_price} =    Get Text    ${reservation_checkout_id_detail_price_price_service_child_price}
        ${price_service_infant_number} =    Get Text
        ...    ${reservation_checkout_id_detail_price_price_service_infant_number}
        ${price_service_infant_price} =    Get Text
        ...    ${reservation_checkout_id_detail_price_price_service_infant_price}
    END

    ${price_service_adult_number} =    Remove String Using Regexp    ${price_service_adult_number}    x.*
    ${price_service_child_number} =    Remove String Using Regexp    ${price_service_child_number}    x.*
    ${price_service_infant_number} =    Remove String Using Regexp    ${price_service_infant_number}    x.*

    ${price_service_adult_number} =    Remove String    ${price_service_adult_number}    ${SPACE}
    ${price_service_child_number} =    Remove String    ${price_service_child_number}    ${SPACE}
    ${price_service_infant_number} =    Remove String    ${price_service_infant_number}    ${SPACE}

    ${price_service_adult_price} =    Remove String    ${price_service_adult_price}    x Rp    .    ${SPACE}
    ${price_service_child_price} =    Remove String    ${price_service_child_price}    x Rp    .    ${SPACE}
    ${price_service_infant_price} =    Remove String    ${price_service_infant_price}    x Rp    .    ${SPACE}

    ${price_service_adult_total} =    Evaluate    ${price_service_adult_number} * ${price_service_adult_price}
    ${price_service_child_total} =    Evaluate    ${price_service_child_number} * ${price_service_child_price}
    ${price_service_infant_total} =    Evaluate    ${price_service_infant_number} * ${price_service_infant_price}

    RETURN    ${price_service_adult_number}    ${price_service_adult_price}    ${price_service_child_number}    ${price_service_child_price}    ${price_service_infant_number}    ${price_service_infant_price}    ${price_service_adult_total}    ${price_service_child_total}    ${price_service_infant_total}

Get "Lounge" details in "Detail Price"
    [Arguments]    ${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${LANGUAGE_EN}"
        ${lounge_adult} =    Get Text    ${reservation_checkout_en_detail_price_lounge_adult_number}
        ${lounge_child} =    Get Text    ${reservation_checkout_en_detail_price_lounge_child_number}
        ${lounge_infant} =    Get Text    ${reservation_checkout_en_detail_price_lounge_infant_number}
        ${lounge_adult_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_adult_price}
        ${lounge_child_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_child_price}
        ${lounge_infant_price} =    Get Text    ${reservation_checkout_en_detail_price_lounge_infant_price}
    ELSE
        ${lounge_adult} =    Get Text    ${reservation_checkout_id_detail_price_lounge_adult_number}
        ${lounge_child} =    Get Text    ${reservation_checkout_id_detail_price_lounge_child_number}
        ${lounge_infant} =    Get Text    ${reservation_checkout_id_detail_price_lounge_infant_number}
        ${lounge_adult_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_adult_price}
        ${lounge_child_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_child_price}
        ${lounge_infant_price} =    Get Text    ${reservation_checkout_id_detail_price_lounge_infant_price}
    END

    ${lounge_adult_number} =    Remove String Using Regexp    ${lounge_adult}    x.*
    ${lounge_child_number} =    Remove String Using Regexp    ${lounge_child}    x.*
    ${lounge_infant_number} =    Remove String Using Regexp    ${lounge_infant}    x.*

    ${lounge_adult_number} =    Remove String    ${lounge_adult_number}    ${SPACE}
    ${lounge_child_number} =    Remove String    ${lounge_child_number}    ${SPACE}
    ${lounge_infant_number} =    Remove String    ${lounge_infant_number}    ${SPACE}

    ${lounge_adult_price} =    Remove String    ${lounge_adult_price}    x Rp    .    ${SPACE}
    ${lounge_child_price} =    Remove String    ${lounge_child_price}    x Rp    .    ${SPACE}
    ${lounge_infant_price} =    Remove String    ${lounge_infant_price}    x Rp    .    ${SPACE}

    ${lounge_adult_total} =    Evaluate    ${lounge_adult_number} * ${lounge_adult_price}
    ${lounge_child_total} =    Evaluate    ${lounge_child_number} * ${lounge_child_price}
    ${lounge_infant_total} =    Evaluate    ${lounge_infant_number} * ${lounge_infant_price}

    ${lounge_total} =    Evaluate    ${lounge_adult_total} + ${lounge_child_total} + ${lounge_infant_total}
    RETURN    ${lounge_adult_total}    ${lounge_child_total}    ${lounge_infant_total}    ${lounge_adult_number}    ${lounge_child_number}    ${lounge_infant_number}    ${lounge_adult_price}    ${lounge_child_price}    ${lounge_infant_price}    ${lounge_total}

Get "Transportation" details in "Detail Price"
    [Arguments]    ${language}=${LANGUAGE_DEFAULT}

    IF    "${language}" == "${LANGUAGE_EN}"
        ${transportation} =    Get Text    ${reservation_checkout_en_detail_price_transportation_total}
    ELSE
        ${transportation} =    Get Text    ${reservation_checkout_id_detail_price_transportation_total}
    END

    ${transportation} =    Split String    ${transportation}    ${SPACE}unit x${SPACE}
    ${transportation_unit} =    Set Variable    ${transportation}[0]
    ${transportation_price} =    Set Variable    ${transportation}[1]
    ${transportation_price} =    Remove String    ${transportation_price}    Rp    .

    ${transportation_total} =    Evaluate
    ...    ${transportation_unit} * ${transportation_price}
    RETURN    ${transportation_unit}    ${transportation_price}    ${transportation_total}

Get "Detail Price" data in "Check Out" form
    [Arguments]    ${language}=${LANGUAGE_DEFAULT}

    IF    "${language}" == "${LANGUAGE_EN}"
        ${CHECKOUT_GRAND_TOTAL} =    Get Text    ${reservation_checkout_en_detail_price_grand_total}
        ${CHECKOUT_PRICE_SERVICE_TOTAL} =    Get Text    ${reservation_checkout_en_detail_price_price_service_total}
    ELSE
        ${CHECKOUT_GRAND_TOTAL} =    Get Text    ${reservation_checkout_id_detail_price_grand_total}
        ${CHECKOUT_PRICE_SERVICE_TOTAL} =    Get Text    ${reservation_checkout_id_detail_price_price_service_total}
    END

    ${CHECKOUT_GRAND_TOTAL} =    Remove String    ${CHECKOUT_GRAND_TOTAL}    Rp    .    ${SPACE}
    ${CHECKOUT_PRICE_SERVICE_TOTAL} =    Remove String    ${CHECKOUT_PRICE_SERVICE_TOTAL}    Rp    .    ${SPACE}

    # Get price service details
    Click Element    ${reservation_checkout_en_detail_price_price_service_expand}
    ${price_service_adult_number}
    ...    ${price_service_adult_price}
    ...    ${price_service_child_number}
    ...    ${price_service_child_price}
    ...    ${price_service_infant_number}
    ...    ${price_service_infant_price}
    ...    ${price_service_adult_total}
    ...    ${price_service_child_total}
    ...    ${price_service_infant_total} =
    ...    Get "Price Service" details in "Detail Price"
    ...    ${language}

    Click Element    ${reservation_checkout_en_detail_price_lounge_expand}
    ${lounge_adult_total}
    ...    ${lounge_child_total}
    ...    ${lounge_infant_total}
    ...    ${lounge_adult_number}
    ...    ${lounge_child_number}
    ...    ${lounge_infant_number}
    ...    ${lounge_adult_price}
    ...    ${lounge_child_price}
    ...    ${lounge_infant_price}
    ...    ${lounge_total} =
    ...    Get "Lounge" details in "Detail Price"
    ...    ${language}

    ${transportation_unit}
    ...    ${transportation_price}
    ...    ${transportation_total} =
    ...    Get "Transportation" details in "Detail Price"
    ...    ${language}

    Set To Dictionary    ${CHECKOUT_PRICE_SERVICE_DATA}    adult_number=${price_service_adult_number}
    ...    child_number=${price_service_child_number}
    ...    infant_number=${price_service_infant_number}
    ...    adult_price=${price_service_adult_price}
    ...    child_price=${price_service_child_price}
    ...    infant_price=${price_service_infant_price}
    ...    adult_total=${price_service_adult_total}
    ...    child_total=${price_service_child_total}
    ...    infant_total=${price_service_infant_total}

    Set To Dictionary    ${CHECKOUT_LOUNGE_DATA}
    ...    adult_number=${lounge_adult_number}
    ...    child_number=${lounge_child_number}
    ...    infant_number=${lounge_infant_number}
    ...    adult_price=${lounge_adult_price}
    ...    child_price=${lounge_child_price}
    ...    infant_price=${lounge_infant_price}
    ...    adult_total=${lounge_adult_total}
    ...    child_total=${lounge_child_total}
    ...    infant_total=${lounge_infant_total}
    ...    lounge_total=${lounge_total}

    Set To Dictionary    ${CHECKOUT_TRANSPORTATION_DATA}
    ...    unit=${transportation_unit}
    ...    price=${transportation_price}
    ...    total=${transportation_total}

    Set Suite Variable    ${CHECKOUT_GRAND_TOTAL}
    Set Suite Variable    ${CHECKOUT_PRICE_SERVICE_TOTAL}
