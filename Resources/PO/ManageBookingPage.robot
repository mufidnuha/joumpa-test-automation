*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot


*** Variables ***
${MANAGE_EN_BOOKING_MAIN_HEADER} =              Let's Find Your Booking and Start Your Journey
${MANAGE_EN_BOOKING_BOOKING_TITLE} =            Find Your Booking
${MANAGE_EN_BOOKING_BOOKING_ID_LABEL} =         Booking ID
${MANAGE_EN_BOOKING_BOOKING_EMAIL_LABEL} =      Email

${MANAGE_ID_BOOKING_MAIN_HEADER} =              Mari Temukan Pesanan Anda dan Mulai Perjalanan Anda
${MANAGE_ID_BOOKING_BOOKING_TITLE} =            Temukan Pesanan Anda
${MANAGE_ID_BOOKING_BOOKING_ID_LABEL} =         ID Booking
${MANAGE_ID_BOOKING_BOOKING_EMAIL_LABEL} =      Email

${MANAGE_BOOKING_BOOKING_ID_INPUT} =            //*[@id="manage-booking"]/div[2]/div/div/div/div/div[2]/div[1]/div[2]/div/div/input
${MANAGE_BOOKING_BOOKING_EMAIL_INPUT} =         //*[@id="manage-booking"]/div[2]/div/div/div/div/div[2]/div[2]/div[2]/div/div/input
${MANAGE_BOOKING_BOOKING_BUTTON} =              //*[@id="manage-booking"]/div[2]/div/div/div/div/div[3]/button


*** Keywords ***
Page should Contain Booking In English
    Page Should Contain    ${MANAGE_EN_BOOKING_MAIN_HEADER}
    Page Should Contain    ${MANAGE_EN_BOOKING_BOOKING_TITLE}
    Page Should Contain    ${MANAGE_EN_BOOKING_BOOKING_ID_LABEL}
    Page Should Contain    ${MANAGE_EN_BOOKING_BOOKING_EMAIL_LABEL}

Page should Contain Booking In Indonesian
    Page Should Contain    ${MANAGE_ID_BOOKING_MAIN_HEADER}
    Page Should Contain    ${MANAGE_ID_BOOKING_BOOKING_TITLE}
    Page Should Contain    ${MANAGE_ID_BOOKING_BOOKING_ID_LABEL}
    Page Should Contain    ${MANAGE_ID_BOOKING_BOOKING_EMAIL_LABEL}

Page should contain Booking Field
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Booking In English
    ELSE
        Page Should Contain Booking In Indonesian
    END
    Page Should Contain Textfield    ${MANAGE_BOOKING_BOOKING_ID_INPUT}
    Page Should Contain Textfield    ${MANAGE_BOOKING_BOOKING_EMAIL_INPUT}
    Page Should Contain Button    ${MANAGE_BOOKING_BOOKING_BUTTON}

Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}
    Page should contain Booking Field    ${LANGUAGE_DEFAULT}
    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}
