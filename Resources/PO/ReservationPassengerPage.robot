*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot
Resource    ReservationOrderExtrasPage.robot


*** Variables ***
${reservation_passenger_en_information} =                       Passenger Information
${reservation_passenger_en_add} =                               Add Passenger
${reservation_passenger_en_notes} =                             Passenger Notes
${reservation_passenger_en_booker_information} =                Booker Information
${reservation_passenger_en_title} =                             Title
${reservation_passenger_en_name} =                              Name
${reservation_passenger_en_nationality} =                       Nationality
${reservation_passenger_en_email} =                             Email
${reservation_passenger_en_phone_number} =                      Phone Number
${reservation_passenger_en_passenger_as_booker} =               The information of booker is same as first passenger

${reservation_passenger_id_information} =                       Informasi Penumpang
${reservation_passenger_id_add} =                               Tambah Penumpang
${reservation_passenger_id_notes} =                             Catatan Penumpang
${reservation_passenger_id_booker_information} =                Informasi Booker
${reservation_passenger_id_title} =                             Titel
${reservation_passenger_id_name} =                              Nama
${reservation_passenger_id_nationality} =                       Kewarganegaraan
${reservation_passenger_id_email} =                             Email
${reservation_passenger_id_phone_number} =                      No Telp
${reservation_passenger_id_passenger_as_booker} =               Informasi pemesan sama dengan penumpang

@{reservation_passenger_passenger_title_input}
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//input
@{reservation_passenger_passenger_title_expand} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//*[name()='svg']
@{reservation_passenger_passenger_title_option_mr} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//div[contains(@id, '-option-0')]
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//div[contains(@id, '-option-0')]
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//div[contains(@id, '-option-0')]
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//div[contains(@id, '-option-0')]
@{reservation_passenger_passenger_title_option_mrs} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//div[contains(@id, '-option-1')]
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//div[contains(@id, '-option-1')]
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//div[contains(@id, '-option-1')]
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//div[contains(@id, '-option-1')]
@{reservation_passenger_passenger_title_option_ms} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//div[contains(@id, '-option-2')]
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//div[contains(@id, '-option-2')]
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//div[contains(@id, '-option-2')]
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//div[contains(@id, '-option-2')]
@{reservation_passenger_passenger_title_option_child} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//div[contains(@id, '-option-3')]
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//div[contains(@id, '-option-3')]
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//div[contains(@id, '-option-3')]
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//div[contains(@id, '-option-3')]
@{reservation_passenger_passenger_title_option_infant} =
...                                                             //input[@name="passenger_list[0].title"]//preceding-sibling::div//div[contains(@id, '-option-4')]
...                                                             //input[@name="passenger_list[1].title"]//preceding-sibling::div//div[contains(@id, '-option-4')]
...                                                             //input[@name="passenger_list[2].title"]//preceding-sibling::div//div[contains(@id, '-option-4')]
...                                                             //input[@name="passenger_list[3].title"]//preceding-sibling::div//div[contains(@id, '-option-4')]
@{reservation_passenger_passenger_name_input} =
...                                                             //input[@name='passenger_list[0].name']
...                                                             //input[@name='passenger_list[1].name']
...                                                             //input[@name='passenger_list[2].name']
...                                                             //input[@name='passenger_list[3].name']
@{reservation_passenger_passenger_nationality_input} =
...                                                             //input[@name="passenger_list[0].passenger_nationality"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[1].passenger_nationality"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[2].passenger_nationality"]//preceding-sibling::div//input
...                                                             //input[@name="passenger_list[3].passenger_nationality"]//preceding-sibling::div//input
@{reservation_passenger_passenger_nationality_option_1} =
...                                                             //input[@name="passenger_list[0].passenger_nationality"]//preceding-sibling::div[1]/div/div
...                                                             //input[@name="passenger_list[1].passenger_nationality"]//preceding-sibling::div[1]/div/div
...                                                             //input[@name="passenger_list[2].passenger_nationality"]//preceding-sibling::div[1]/div/div
...                                                             //input[@name="passenger_list[3].passenger_nationality"]//preceding-sibling::div[1]/div/div
@{reservation_passenger_passenger_nationality_expand} =
...                                                             //input[@name="passenger_list[0].passenger_nationality"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[1].passenger_nationality"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[2].passenger_nationality"]//preceding-sibling::div//*[name()='svg']
...                                                             //input[@name="passenger_list[3].passenger_nationality"]//preceding-sibling::div//*[name()='svg']
@{reservation_passenger_passenger_email_input} =
...                                                             //input[@name='passenger_list[0].email']
...                                                             //input[@name='passenger_list[1].email']
...                                                             //input[@name='passenger_list[2].email']
...                                                             //input[@name='passenger_list[3].email']
@{reservation_passenger_passenger_birth_date_input} =
...                                                             //input[@name='passenger_list[0].passenger_date_of_birth']
...                                                             //input[@name='passenger_list[1].passenger_date_of_birth']
...                                                             //input[@name='passenger_list[2].passenger_date_of_birth']
...                                                             //input[@name='passenger_list[3].passenger_date_of_birth']
${reservation_passenger_passenger_phone_number_input} =         //div[@tabindex=-1]//input[@type="tel"]
${reservation_passenger_passenger_save_button} =                //div[@tabindex=-1]//button[@type="Submit"]
${reservation_passenger_passenger_cancel_button} =              //div[@tabindex=-1]//button[@type="Button"]

${reservation_passenger_add_button} =                           //div[@class="clickable normal-title text-extra-bold pt-3 pl-3"]
${reservation_passenger_notes_input} =                          //input[@name='passenger_notes']
${reservation_passenger_passenger_as_booker_checkbox} =         //input[@name="passenger_as_booker"]/following::span[@class="checkmark"]
${reservation_passenger_booker_title_input} =                   //input[@name="bookers_title"]//preceding-sibling::div//input
${reservation_passenger_booker_title_expand} =                  //input[@name="bookers_title"]//preceding-sibling::div//*[name()='svg']
${reservation_passenger_booker_title_option_mr} =               //input[@name="bookers_title"]//preceding-sibling::div//div[contains(@id, '-option-0')]
${reservation_passenger_booker_title_option_mrs} =              //input[@name="bookers_title"]//preceding-sibling::div//div[contains(@id, '-option-1')]
${reservation_passenger_booker_title_option_ms} =               //input[@name="bookers_title"]//preceding-sibling::div//div[contains(@id, '-option-2')]
${reservation_passenger_booker_title_option_child} =            //input[@name="bookers_title"]//preceding-sibling::div//div[contains(@id, '-option-3')]
${reservation_passenger_booker_title_option_infant} =           //input[@name="bookers_title"]//preceding-sibling::div//div[contains(@id, '-option-4')]
${reservation_passenger_booker_name_input} =                    //input[@name='bookers_name']
${reservation_passenger_booker_nationality_input} =             //input[@name="bookers_nationality"]//preceding-sibling::div//input
${reservation_passenger_booker_nationality_option_1} =          //input[@name="bookers_nationality"]//preceding-sibling::div[1]/div/div
${reservation_passenger_booker_email_input} =                   //input[@name='bookers_email']
${reservation_passenger_booker_phone_number_input} =            //*[@id="root"]//input[@type="tel"]

${reservation_passenger_next_button} =                          //div[@style="float: right;"]//button[2]
${reservation_passenger_back_button} =                          //div[@style="float: right;"]//button[1]


*** Keywords ***
Page Should Contain Passenger Information Field
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_passenger_en_information}
        Page Should Contain    ${reservation_passenger_en_add}
    END

    Page Should Contain Element    ${reservation_passenger_add_button}

Page Should Contain Passenger Notes Field
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_passenger_en_notes}
        Page Should Contain    ${reservation_passenger_en_add}
    END

    Page Should Contain Element    ${reservation_passenger_notes_input}

Page Should Contain Booker Information
    [Arguments]    ${language}
    IF    "${language}" == "${LANGUAGE_EN}"
        Page Should Contain    ${reservation_passenger_en_booker_information}
        Page Should Contain    ${reservation_passenger_en_title}
        Page Should Contain    ${reservation_passenger_en_name}
        Page Should Contain    ${reservation_passenger_en_nationality}
        Page Should Contain    ${reservation_passenger_en_email}
        Page Should Contain    ${reservation_passenger_en_phone_number}
    END

    Page Should Contain Element    ${reservation_passenger_booker_title_input}
    Page Should Contain Element    ${reservation_passenger_booker_name_input}
    Page Should Contain Element    ${reservation_passenger_booker_nationality_input}
    Page Should Contain Element    ${reservation_passenger_booker_email_input}
    Page Should Contain Element    ${reservation_passenger_booker_phone_number_input}

The "Passenger" form display correctly
    [Arguments]    ${language}

    Page Should Contain Header Reservation    ${language}
    Page Should Contain Process Reservation    ${language}

    Page Should Contain Passenger Information Field    ${language}
    Page Should Contain Passenger Notes Field    ${language}
    Page Should Contain Booker Information    ${language}

    Page Should Contain Button    ${reservation_passenger_back_button}
    Page Should Contain Button    ${reservation_passenger_next_button}

    Page Should Contain Support Footer    ${language}
    Page Should Contain Main Footer    ${language}

    Checkmark in Flight Section is Green

Select "Title" in Booker Information
    [Arguments]    ${booker_title}
    Click Element    ${reservation_passenger_booker_title_expand}

    IF    "${booker_title}" == "${TITLE_MR}"
        Click Element    ${reservation_passenger_booker_title_option_mr}
    ELSE IF    "${booker_title}" == "${TITLE_MRS}"
        Click Element    ${reservation_passenger_booker_title_option_mrs}
    ELSE IF    "${booker_title}" == "${TITLE_MS}"
        Click Element    ${reservation_passenger_booker_title_option_ms}
    ELSE IF    "${booker_title}" == "${TITLE_CHILD}"
        Click Element    ${reservation_passenger_booker_title_option_child}
    ELSE
        Click Element    ${reservation_passenger_booker_title_option_infant}
    END

Search and Select "Nationality" in Booker Information
    [Arguments]    ${booker_nationality}
    Input Text    ${reservation_passenger_booker_nationality_input}    ${booker_nationality}
    Click Element    ${reservation_passenger_booker_nationality_option_1}

Select "Title" in Passenger Information
    [Arguments]    ${passenger_title}    ${sequence_passenger}=0
    Click Element    ${reservation_passenger_passenger_title_expand}[${sequence_passenger}]

    IF    "${passenger_title}" == "${TITLE_MR}"
        Click Element    ${reservation_passenger_passenger_title_option_mr}[${sequence_passenger}]
    ELSE IF    "${passenger_title}" == "${TITLE_MRS}"
        Click Element    ${reservation_passenger_passenger_title_option_mrs}[${sequence_passenger}]
    ELSE IF    "${passenger_title}" == "${TITLE_MS}"
        Click Element    ${reservation_passenger_passenger_title_option_ms}[${sequence_passenger}]
    ELSE IF    "${passenger_title}" == "${TITLE_CHILD}"
        Click Element    ${reservation_passenger_passenger_title_option_child}[${sequence_passenger}]
    ELSE
        Click Element    ${reservation_passenger_passenger_title_option_infant}[${sequence_passenger}]
    END

Search and Select "Nationality" in Passenger Information
    [Arguments]    ${passenger_nationality}    ${sequence_passenger}=0
    Input Text
    ...    ${reservation_passenger_passenger_nationality_input}[${sequence_passenger}]
    ...    ${passenger_nationality}
    Click Element    ${reservation_passenger_passenger_nationality_option_1}[${sequence_passenger}]

User has filled in the Passenger form correctly
    [Arguments]
    ...    ${passenger_title}
    ...    ${passenger_name}
    ...    ${passenger_nationality}
    ...    ${passenger_email}
    ...    ${passsenger_phone_number}
    ...    ${has_second_adult}=${False}
    ...    ${has_child}=${False}
    ...    ${has_infant}=${False}

    Click Element    ${reservation_passenger_add_button}
    Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[0]    20s
    Select "Title" in Passenger Information    ${passenger_title}
    Input Text    ${reservation_passenger_passenger_name_input}[0]    ${passenger_name}
    Search and Select "Nationality" in Passenger Information    ${passenger_nationality}
    Input Text    ${reservation_passenger_passenger_email_input}[0]    ${passenger_email}
    Input Text    ${reservation_passenger_passenger_phone_number_input}    ${passenger_phone_number}

    Click Button    ${reservation_passenger_passenger_save_button}
    Sleep    3s

    IF    ${has_second_adult}
        Click Element    ${reservation_passenger_add_button}
        ${sequence_passenger} =    Set Variable    1
        Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[1]    20s
        Select "Title" in Passenger Information    ${second_passenger_title}    ${sequence_passenger}
        Input Text    ${reservation_passenger_passenger_name_input}[1]    ${second_passenger_name}
        Search and Select "Nationality" in Passenger Information
        ...    ${second_passenger_nationality}
        ...    ${sequence_passenger}
        Input Text    ${reservation_passenger_passenger_email_input}[1]    ${second_passenger_email_valid}
        Input Text    ${reservation_passenger_passenger_phone_number_input}    ${second_passenger_phone_number}

        Click Button    ${reservation_passenger_passenger_save_button}
        Sleep    3s
    END

    IF    ${has_child}
        Click Element    ${reservation_passenger_add_button}
        ${sequence_passenger} =    Set Variable    2
        Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[2]    20s
        Select "Title" in Passenger Information    ${child_passenger_title}    ${sequence_passenger}
        Input Text    ${reservation_passenger_passenger_name_input}[2]    ${child_passenger_name}
        Search and Select "Nationality" in Passenger Information
        ...    ${child_passenger_nationality}
        ...    ${sequence_passenger}

        Click Button    ${reservation_passenger_passenger_save_button}
        Sleep    3s
    END

    IF    ${has_infant}
        Click Element    ${reservation_passenger_add_button}
        ${sequence_passenger} =    Set Variable    3
        Wait Until Page Contains Element    ${reservation_passenger_passenger_name_input}[3]    20s
        Select "Title" in Passenger Information    ${infant_passenger_title}    ${sequence_passenger}
        Input Text    ${reservation_passenger_passenger_name_input}[3]    ${infant_passenger_name}
        Input Text    ${reservation_passenger_passenger_birth_date_input}[3]    ${infant_passenger_birth_date}
        Search and Select "Nationality" in Passenger Information
        ...    ${infant_passenger_nationality}
        ...    ${sequence_passenger}

        Click Button    ${reservation_passenger_passenger_save_button}
        Sleep    3s
    END

    Click Element    ${reservation_passenger_passenger_as_booker_checkbox}

    Click Button    ${reservation_passenger_next_button}
    Sleep    3s
    ReservationOrderExtrasPage.The "Order Extras" form in "Reservation" page displayed correctly    ${LANGUAGE_DEFAULT}
