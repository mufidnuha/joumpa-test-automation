*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot


*** Variables ***
${CONTACTUS_EN_MAIN_HEADER} =       Reach Out and Connect with Us
${CONTACTUS_EN_ADDRESS_LABEL} =     Address
${CONTACTUS_EN_CONTACT_LABEL} =     Contact

${CONTACTUS_ID_MAIN_HEADER} =       Jangkau dan Hubungi Kami
${CONTACTUS_ID_ADDRESS_LABEL} =     Alamat
${CONTACTUS_ID_CONTACT_LABEL} =     Kontak

${CONTACTUS_ADDRESS_VALUE} =        Gedung Gapura
${CONTACTUS_ADDRESS_VALUE_2} =      Jl. Merpati III, Blok B-12, Kav. 7.
${CONTACTUS_ADDRESS_VALUE_3} =      Kota Baru, Kemayoran, Jakarta Pusat
${CONTACTUS_PHONE_VALUE} =          +62-811-8566-009
${CONTACTUS_FAX_VALUE} =            +62-21-654-5408
${CONTACTUS_EMAIL_VALUE} =          joumpa@gapura.id


*** Keywords ***
Page Should Contain Contact Us In English
    Page Should Contain    ${CONTACTUS_EN_MAIN_HEADER}
    Page Should Contain    ${CONTACTUS_EN_ADDRESS_LABEL}
    Page Should Contain    ${CONTACTUS_EN_CONTACT_LABEL}

Page Should Contain Contact Us In Indonesian
    Page Should Contain    ${CONTACTUS_ID_MAIN_HEADER}
    Page Should Contain    ${CONTACTUS_ID_ADDRESS_LABEL}
    Page Should Contain    ${CONTACTUS_ID_CONTACT_LABEL}

Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Contact Us In English
    ELSE
        Page Should Contain Contact Us In Indonesian
    END
    Page Should Contain    ${CONTACTUS_ADDRESS_VALUE}
    Page Should Contain    ${CONTACTUS_ADDRESS_VALUE_2}
    Page Should Contain    ${CONTACTUS_ADDRESS_VALUE_3}
    Page Should Contain    ${CONTACTUS_PHONE_VALUE}
    Page Should Contain    ${CONTACTUS_FAX_VALUE}
    Page Should Contain    ${CONTACTUS_EMAIL_VALUE}

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}
