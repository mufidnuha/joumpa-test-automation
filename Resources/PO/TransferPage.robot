*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${TRANSFER_MAIN_HEADER} =                   Transfer Service
${TRANSFER_EN_TRANSFER_FLIGHT_LABEL} =      Transfer Flight
${TRANSFER_ID_TRANSFER_FLIGHT_LABEL} =      Transfer Penerbangan

${TRANSFER_BACK_BUTTON} =                   //*[@id="product-detail"]/div[1]/div/span
${TRANSFER_BANNER_IMAGE} =                  //*[@id="product-detail"]/div[2]/div/img


*** Keywords ***
Display Correctly
    [Arguments]    ${LANGUAGE}
    Page Should Contain Header    ${LANGUAGE}

    Page Should Contain    ${TRANSFER_MAIN_HEADER}
    Page Should Contain Element    ${TRANSFER_BACK_BUTTON}
    Page Should Contain Image    ${TRANSFER_BANNER_IMAGE}
    IF    "${LANGUAGE}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${TRANSFER_EN_TRANSFER_FLIGHT_LABEL}
    ELSE
        Page Should Contain    ${TRANSFER_ID_TRANSFER_FLIGHT_LABEL}
    END

    Page Should Contain Reservation Footer    ${LANGUAGE}
    Page Should Contain Main Footer    ${LANGUAGE}

User located in "Transfer Service" Page
    Common.Load    ${START_URL}    ${PATH_PRODUCTS_TRANSFER}
    Wait Until Page Contains    ${TRANSFER_MAIN_HEADER}
