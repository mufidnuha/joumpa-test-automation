*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${MAG_MAIN_HEADER} =                Meet and Greet Service
${MAG_EN_DEPARTURE_TITLE} =         Departure Domestic
${MAG_EN_ARRIVAL_TITLE} =           Arrival Domestic
${MAG_EN_ARRIVAL_INTER_TITLE}       Arrival International

${MAG_ID_DEPARTURE_TITLE} =         Keberangkatan Domestik
${MAG_ID_ARRIVAL_TITLE} =           Kedatangan Domestik
${MAG_ID_ARRIVAL_INTER_TITLE}       Kedatangan Internasional

${MAG_BACK_BUTTON} =                //*[@id="product-detail"]/div[1]/div/span
${MAG_BANNER_IMAGE} =               //*[@id="product-detail"]/div[2]/div/img


*** Keywords ***
Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    Page Should Contain    ${MAG_MAIN_HEADER}
    Page Should Contain Element    ${MAG_BACK_BUTTON}
    Page Should Contain Image    ${MAG_BANNER_IMAGE}
    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${MAG_EN_DEPARTURE_TITLE}
        Page Should Contain    ${MAG_EN_ARRIVAL_TITLE}
        Page Should Contain    ${MAG_EN_ARRIVAL_INTER_TITLE}
    ELSE
        Page Should Contain    ${MAG_ID_DEPARTURE_TITLE}
        Page Should Contain    ${MAG_ID_ARRIVAL_TITLE}
        Page Should Contain    ${MAG_ID_ARRIVAL_INTER_TITLE}
    END

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}

User located in "Meet And Greet Service" Page
    Common.Load    ${START_URL}    ${PATH_PRODUCTS_MEET_AND_GREET}
    Wait Until Page Contains    ${MAG_MAIN_HEADER}
