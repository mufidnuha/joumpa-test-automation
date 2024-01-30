*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot


*** Variables ***
${OURLOCATION_EN_MAIN_HEADER} =         From Sabang to Merauke,
${OURLOCATION_EN_MAIN_HEADER_2} =       Connecting Indonesia's Beauty with Us
${OURLOCATION_EN_LOCATION_LABEL} =      Location

${OURLOCATION_ID_MAIN_HEADER} =         Dari Sabang sampai Merauke,
${OURLOCATION_ID_MAIN_HEADER_2} =       Hubungkan Keindahan Indonesia dengan Kami
${OURLOCATION_ID_LOCATION_LABEL} =      Lokasi

${OURLOCATION_LOCATION_SELECT} =        //*[@id="our-location"]/div[2]/div[1]/div/div/div/div/div/div[2]/div/div/div/div[1]/div[2]
${OURLOCATION_MAPS} =                   //*[@id="our-location"]/div[2]/div[2]/div[1]


*** Keywords ***
Page Should Contain Our Location In English
    Page Should Contain    ${OURLOCATION_EN_MAIN_HEADER}
    Page Should Contain    ${OURLOCATION_EN_MAIN_HEADER_2}
    Page Should Contain    ${OURLOCATION_EN_LOCATION_LABEL}

Page Should Contain Our Location In Indonesian
    Page Should Contain    ${OURLOCATION_ID_MAIN_HEADER}
    Page Should Contain    ${OURLOCATION_ID_MAIN_HEADER_2}
    Page Should Contain    ${OURLOCATION_ID_LOCATION_LABEL}

Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Our Location In English
    ELSE
        Page Should Contain Our Location In Indonesian
    END
    Page Should Contain Element    ${OURLOCATION_LOCATION_SELECT}
    Page Should Contain Element    ${OURLOCATION_MAPS}

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}
