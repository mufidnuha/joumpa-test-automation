*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot
Resource    ReservationCheckOutPage.robot


*** Variables ***
${reservation_orderextras_en_main_header} =                         Order Extras
${reservation_orderextras_en_lounge} =                              Lounge
${reservation_orderextras_en_transportation} =                      Transportation

${reservation_orderextras_id_main_header} =                         Layanan Tambahan
${reservation_orderextras_id_lounge} =                              Ruang Tunggu
${reservation_orderextras_id_transportation} =                      Transportasi

${reservation_orderextras_lounge_expand} =                          //div[@class="card-body rounded undefined"]/div[1]//span[text()="expand_more"]
${reservation_orderextras_lounge_option_expand} =                   //div[@class="select__indicator select__dropdown-indicator css-1co9ke8-indicatorContainer"]//*[name()='svg']
${reservation_orderextras_lounge_selected} =                        //div[contains(text(), "")]/parent::div
${reservation_orderextras_lounge_adult_input} =                     //input[@name='lounge_adult_number']
${reservation_orderextras_lounge_child_input} =                     //input[@name='lounge_child_number']
${reservation_orderextras_lounge_infant_input} =                    //input[@name='lounge_infant_number']
${reservation_orderextras_lounge_total_value} =                     //div[@class="side-menu-detail"]//div[@class="d-flex justify-content-between border-top p-3"][1]/div[2]
${reservation_orderextras_lounge_adult_value} =                     //div[@class="side-menu-detail"]//div[@class="d-flex justify-content-between border-top p-3"][2]/div[2]
${reservation_orderextras_lounge_child_value} =                     //div[@class="side-menu-detail"]//div[@class="d-flex justify-content-between border-top p-3"][3]/div[2]
${reservation_orderextras_lounge_infant_value} =                    //div[@class="side-menu-detail"]//div[@class="d-flex card-body justify-content-between border-top p-3"]/div[2]

${reservation_orderextras_transportation_expand} =                  //div[@class="card-body rounded undefined"]/div[2]//span[text()="expand_more"]
${reservation_orderextras_transportation_region_expand} =           //div[@class="form-group"][1]//*[name()='svg']
${reservation_orderextras_transportation_region_input} =            //input[@name="region"]//preceding-sibling::div//input
${reservation_orderextras_transportation_region_selected} =         //div[contains(text(), "")]/parent::div
${reservation_orderextras_transportation_car_type_expand} =         //div[@class="form-group"][2]//*[name()='svg']
${reservation_orderextras_transportation_car_type_input} =          //input[@name="car_type"]//preceding-sibling::div//input
${reservation_orderextras_transportation_car_type_selected} =       //div[contains(text(), "")]/parent::div/parent::div
${reservation_orderextras_transportation_total_unit_input} =        //input[@name="total_unit"]
${reservation_orderextras_transportation_price} =                   //input[@name="car_type"]//preceding-sibling::div/div[1]/div[1]/div/div[3]

${reservation_orderextras_next_button} =                            //div[@style="float: right;"]//button[2]
${reservation_orderextras_back_button} =                            //div[@style="float: right;"]//button[1]


*** Keywords ***
Page Should Contain Longue Field
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_orderextras_en_lounge}
    ELSE
        Page Should Contain    ${reservation_orderextras_id_lounge}
    END
    Page Should Contain Element    ${reservation_orderextras_lounge_expand}

Page Should Contain Transportation Field
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_orderextras_en_transportation}
    ELSE
        Page Should Contain    ${reservation_orderextras_id_transportation}
    END
    Page Should Contain Element    ${reservation_orderextras_transportation_expand}

The "Order Extras" form in "Reservation" page displayed correctly
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Wait Until Page Contains    ${reservation_orderextras_en_main_header}    10s
    ELSE
        Wait Until Page Contains    ${reservation_orderextras_id_main_header}    10s
    END

    Page Should Contain Header Reservation    ${language}
    Page Should Contain Process Reservation    ${language}

    Page Should Contain Longue Field    ${language}
    Page Should Contain Transportation Field    ${language}

    Page Should Contain Element    ${reservation_orderextras_next_button}
    Page Should Contain Element    ${reservation_orderextras_back_button}

    Page Should Contain Support Footer    ${language}
    Page Should Contain Main Footer    ${language}

    Checkmark in Flight Section is Green
    Checkmark in Passenger Section is Green

Set Lounge
    [Arguments]    ${lounge}
    Set Global Variable
    ...    ${reservation_orderextras_lounge_selected}
    ...    //div[contains(text(), "${lounge}")]/parent::div

Select Lounge
    [Arguments]    ${lounge}
    Set Lounge    ${lounge}
    Click Element    ${reservation_orderextras_lounge_option_expand}
    Sleep    3s
    Click Element    ${reservation_orderextras_lounge_selected}

Set Region
    [Arguments]    ${region}
    Set Global Variable
    ...    ${reservation_orderextras_transportation_region_selected}
    ...    //div[contains(text(), "${region}")]/parent::div

Select Region
    [Arguments]    ${region}
    Set Region    ${region}
    Input Text    ${reservation_orderextras_transportation_region_input}    ${region}
    Sleep    3s
    Click Element    ${reservation_orderextras_transportation_region_selected}

Set Car Type
    [Arguments]    ${car_type}
    Set Global Variable
    ...    ${reservation_orderextras_transportation_car_type_selected}
    ...    //div[contains(text(), "${car_type}")]/parent::div/parent::div

Select Car Type
    [Arguments]    ${car_type}
    Set Car Type    ${car_type}
    Click Element    ${reservation_orderextras_transportation_car_type_expand}
    Sleep    3s
    Click Element    ${reservation_orderextras_transportation_car_type_selected}

Get "Lounge" total in "Order Extras" form
    ${orderextras_lounge_total} =    Get Text    ${reservation_orderextras_lounge_total_value}
    ${orderextras_adult_total} =    Get Text    ${reservation_orderextras_lounge_adult_value}
    ${orderextras_child_total} =    Get Text    ${reservation_orderextras_lounge_child_value}
    ${orderextras_infant_total} =    Get Text    ${reservation_orderextras_lounge_infant_value}

    ${orderextras_lounge_total} =    Remove String    ${orderextras_lounge_total}    .    Rp    ${SPACE}
    ${orderextras_adult_total} =    Remove String    ${orderextras_adult_total}    .    Rp    ${SPACE}
    ${orderextras_child_total} =    Remove String    ${orderextras_child_total}    .    Rp    ${SPACE}
    ${orderextras_infant_total} =    Remove String    ${orderextras_infant_total}    .    Rp    ${SPACE}

    ${orderextras_adult_total} =    Convert To Integer    ${orderextras_adult_total}
    ${orderextras_child_total} =    Convert To Integer    ${orderextras_child_total}
    ${orderextras_infant_total} =    Convert To Integer    ${orderextras_infant_total}

    RETURN    ${orderextras_lounge_total}    ${orderextras_adult_total}    ${orderextras_child_total}    ${orderextras_infant_total}

Get "Transportation" total in "Order Extras" form
    ${orderextras_transportation_price} =    Get Text    ${reservation_orderextras_transportation_price}
    ${orderextras_transportation_price} =    Remove String    ${orderextras_transportation_price}    Rp    .

    ${orderextras_transportation_unit} =    Get Element Attribute
    ...    ${reservation_orderextras_transportation_total_unit_input}
    ...    value

    ${orderextras_transportation_total} =    Evaluate
    ...    ${orderextras_transportation_price} * ${orderextras_transportation_unit}
    RETURN    ${orderextras_transportation_total}

User has filled in the Order Extras form correctly
    [Arguments]
    ...    ${lounge_data}
    ...    ${adult_number}
    ...    ${child_number}
    ...    ${infant_number}
    ...    ${region_data}
    ...    ${car_type_data}
    ...    ${total_unit}
    Click Element    ${reservation_orderextras_lounge_expand}
    Select Lounge    ${lounge_data}
    Input Text    ${reservation_orderextras_lounge_adult_input}    ${adult_number}
    Input Text    ${reservation_orderextras_lounge_child_input}    ${child_number}
    Input Text    ${reservation_orderextras_lounge_infant_input}    ${infant_number}

    ${orderextras_lounge_total}
    ...    ${orderextras_adult_total}
    ...    ${orderextras_child_total}
    ...    ${orderextras_infant_total} =
    ...    Get "Lounge" total in "Order Extras" form

    Click Element    ${reservation_orderextras_transportation_expand}
    Select Region    ${region_data}
    Select Car Type    ${car_type_data}
    Input Text    ${reservation_orderextras_transportation_total_unit_input}    ${total_unit}

    ${orderextras_transportation_total} =    Get "Transportation" total in "Order Extras" form

    Click Button    ${reservation_orderextras_next_button}

    ReservationCheckOutPage.The "Check Out" page display correctly    ${LANGUAGE_DEFAULT}
