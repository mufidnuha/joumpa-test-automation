*** Settings ***
Library     SeleniumLibrary
Resource    Header.robot


*** Variables ***
${FOOTER_JOUMPA_LOGO} =                     //*[@id="root"]/div[4]/div[2]/div/div[1]/img
${FOOTER_GAPURA_LOGO} =                     //*[@id="root"]/div[4]/div[2]/div/div[1]/div/img
${FOOTER_TERMS_AND_CONDITION} =             //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[1]/div[2]
${FOOTER_PRIVACY_POLICY} =                  //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[1]/div[3]
${FOOTER_CONTACT_US} =                      //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[1]/div[4]
${FOOTER_OUR_LOCATION} =                    //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[2]/div[2]
${FOOTER_ABOUT_JOUMPA} =                    //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[2]/div[3]
${FOOTER_ABOUT_GAPURA} =                    //*[@id="root"]/div[4]/div[2]/div/div[2]/div/div[2]/a
${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO} =       //*[@id="root"]/div[4]/div[2]/div/div[4]/div[2]/div[1]/a/img
${FOOTER_DOWNLOAD_APP_STORE_LOGO} =         //*[@id="root"]/div[4]/div[2]/div/div[4]/div[2]/div[2]/a/img
${FOOTER_DOWNLOAD_GOOGLE_PLAY_QR} =         //*[@id="root"]/div[4]/div[2]/div/div[4]/div[2]/div[1]/img
${FOOTER_DOWNLOAD_APP_STORE_QR} =           //*[@id="root"]/div[4]/div[2]/div/div[4]/div[2]/div[2]/img
${FOOTER_RESERVATION_BUTTON} =              //*[@id="root"]/div[4]/div[1]/div/button

${FOOTER_EN_PRODUCT_FROM} =                 Product of :
${FOOTER_EN_INFORMATION} =                  Information
${FOOTER_EN_ABOUT_US} =                     About Us
${FOOTER_EN_CONTACT_CENTER} =               Contact Center
${FOOTER_EN_WHATSAPP_LABEL} =               Whatsapp
${FOOTER_EN_EMAIL_LABEL} =                  Email
${FOOTER_EN_CALL_CENTER_LABEL} =            Call Center
${FOOTER_EN_DOWNLOAD_APPS} =                Download Apps Joumpa for Customer
${FOOTER_EN_TERMS_AND_CONDITION_LABEL} =    Terms and Condition
${FOOTER_EN_PRIVACY_POLICY_LABEL} =         Privacy Policy
${FOOTER_EN_CONTACT_US_LABEL} =             Contact Us
${FOOTER_EN_OUR_LOCATION_LABEL} =           Our Location
${FOOTER_EN_ABOUT_JOUMPA_LABEL} =           About Joumpa
${FOOTER_EN_ABOUT_GAPURA_LABEL} =           About Gapura
${FOOTER_EN_WHATSAPP_VALUE} =               +62-811-8566-009
${FOOTER_EN_EMAIL_VALUE} =                  joumpa@gapura.id
${FOOTER_EN_CALL_CENTER_VALUE} =            +62-811-8566-009

${FOOTER_EN_RESERVATION_HEADER} =           What are you waiting for? Book Now!
${FOOTER_EN_RESERVATION_HEADER_2} =         Let's make your journey stay comfortable
${FOOTER_EN_RESERVATION_BUTTON_LABEL} =     Book Now!

${FOOTER_ID_PRODUCT_FROM} =                 Produk dari :
${FOOTER_ID_INFORMATION} =                  Informasi
${FOOTER_ID_ABOUT_US} =                     Tentang Kami
${FOOTER_ID_CONTACT_CENTER} =               Contact Center
${FOOTER_ID_WHATSAPP_LABEL} =               Whatsapp
${FOOTER_ID_EMAIL_LABEL} =                  Email
${FOOTER_ID_CALL_CENTER_LABEL} =            Call Center
${FOOTER_ID_DOWNLOAD_APPS} =                Download Apps Joumpa for Customer
${FOOTER_ID_TERMS_AND_CONDITION_LABEL} =    Syarat dan Ketentuan
${FOOTER_ID_PRIVACY_POLICY_LABEL} =         Kebijakan Privasi
${FOOTER_ID_CONTACT_US_LABEL} =             Hubungi Kami
${FOOTER_ID_OUR_LOCATION_LABEL} =           Alamat Kami
${FOOTER_ID_ABOUT_JOUMPA_LABEL} =           Tentang Joumpa
${FOOTER_ID_ABOUT_GAPURA_LABEL} =           Tentang Gapura
${FOOTER_ID_WHATSAPP_VALUE} =               +62-811-8566-009
${FOOTER_ID_EMAIL_VALUE} =                  joumpa@gapura.id
${FOOTER_ID_CALL_CENTER_VALUE} =            +62-811-8566-009

${FOOTER_ID_RESERVATION_HEADER} =           Tunggu apa lagi? Pesan Sekarang!
${FOOTER_ID_RESERVATION_HEADER_2} =         Untuk perjalananmu menjadi lebih nyaman
${FOOTER_ID_RESERVATION_BUTTON_LABEL} =     Pesan Sekarang!

${FOOTER_EN_SUPPORT_MAIN_HEADER} =          Need Help?
${FOOTER_EN_SUPPORT_MAIN_HEADER_2} =        Don’t worry. We’re here for you to help
${FOOTER_EN_SUPPORT_BUTTON_LABEL} =         Go To Support
${FOOTER_ID_SUPPORT_MAIN_HEADER} =          Butuh Bantuan?
${FOOTER_ID_SUPPORT_MAIN_HEADER_2} =        Jangan khawatir. Kami di sini untuk membantu Anda
${FOOTER_ID_SUPPORT_BUTTON_LABEL} =         Cari Bantuan
${FOOTER_SUPPORT_BUTTON} =                  //*[@id="root"]/div[4]/div[1]/div/button


*** Keywords ***
Page Should Contain Main Footer In English
    Page Should Contain    ${FOOTER_EN_PRODUCT_FROM}
    Page Should Contain    ${FOOTER_EN_INFORMATION}
    Page Should Contain    ${FOOTER_EN_ABOUT_US}
    Page Should Contain    ${FOOTER_EN_CONTACT_CENTER}
    Page Should Contain    ${FOOTER_EN_WHATSAPP_LABEL}
    Page Should Contain    ${FOOTER_EN_EMAIL_LABEL}
    Page Should Contain    ${FOOTER_EN_CALL_CENTER_LABEL}
    Page Should Contain    ${FOOTER_EN_DOWNLOAD_APPS}
    Page Should Contain    ${FOOTER_EN_TERMS_AND_CONDITION_LABEL}
    Page Should Contain    ${FOOTER_EN_PRIVACY_POLICY_LABEL}
    Page Should Contain    ${FOOTER_EN_CONTACT_US_LABEL}
    Page Should Contain    ${FOOTER_EN_OUR_LOCATION_LABEL}
    Page Should Contain    ${FOOTER_EN_ABOUT_JOUMPA_LABEL}
    Page Should Contain    ${FOOTER_EN_ABOUT_GAPURA_LABEL}
    Page Should Contain    ${FOOTER_EN_WHATSAPP_VALUE}
    Page Should Contain    ${FOOTER_EN_EMAIL_VALUE}
    Page Should Contain    ${FOOTER_EN_CALL_CENTER_VALUE}

Page Should Contain Reservation Footer In English
    Page Should Contain    ${FOOTER_EN_RESERVATION_HEADER}
    Page Should Contain    ${FOOTER_EN_RESERVATION_HEADER_2}
    Page Should Contain    ${FOOTER_EN_RESERVATION_BUTTON_LABEL}

Page Should Contain Main Footer In Indonesian
    Page Should Contain    ${FOOTER_ID_PRODUCT_FROM}
    Page Should Contain    ${FOOTER_ID_INFORMATION}
    Page Should Contain    ${FOOTER_ID_ABOUT_US}
    Page Should Contain    ${FOOTER_ID_CONTACT_CENTER}
    Page Should Contain    ${FOOTER_ID_WHATSAPP_LABEL}
    Page Should Contain    ${FOOTER_ID_EMAIL_LABEL}
    Page Should Contain    ${FOOTER_ID_CALL_CENTER_LABEL}
    Page Should Contain    ${FOOTER_ID_DOWNLOAD_APPS}
    Page Should Contain    ${FOOTER_ID_TERMS_AND_CONDITION_LABEL}
    Page Should Contain    ${FOOTER_ID_PRIVACY_POLICY_LABEL}
    Page Should Contain    ${FOOTER_ID_CONTACT_US_LABEL}
    Page Should Contain    ${FOOTER_ID_OUR_LOCATION_LABEL}
    Page Should Contain    ${FOOTER_ID_ABOUT_JOUMPA_LABEL}
    Page Should Contain    ${FOOTER_ID_ABOUT_GAPURA_LABEL}
    Page Should Contain    ${FOOTER_ID_WHATSAPP_VALUE}
    Page Should Contain    ${FOOTER_ID_EMAIL_VALUE}
    Page Should Contain    ${FOOTER_ID_CALL_CENTER_VALUE}

Page Should Contain Reservation Footer In Indonesian
    Page Should Contain    ${FOOTER_ID_RESERVATION_HEADER}
    Page Should Contain    ${FOOTER_ID_RESERVATION_HEADER_2}
    Page Should Contain    ${FOOTER_ID_RESERVATION_BUTTON_LABEL}

Page Should Contain Main Footer
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Image    ${FOOTER_JOUMPA_LOGO}
    Page Should Contain Image    ${FOOTER_GAPURA_LOGO}
    Page Should Contain Element    ${FOOTER_TERMS_AND_CONDITION}
    Page Should Contain Element    ${FOOTER_PRIVACY_POLICY}
    Page Should Contain Element    ${FOOTER_CONTACT_US}
    Page Should Contain Element    ${FOOTER_OUR_LOCATION}
    Page Should Contain Element    ${FOOTER_ABOUT_JOUMPA}
    Page Should Contain Element    ${FOOTER_ABOUT_GAPURA}
    Page Should Contain Image    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO}
    Page Should Contain Image    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_QR}
    Page Should Contain Image    ${FOOTER_DOWNLOAD_APP_STORE_LOGO}
    Page Should Contain Image    ${FOOTER_DOWNLOAD_APP_STORE_QR}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Main Footer In English
    ELSE
        Page Should Contain Main Footer In Indonesian
    END

Page Should Contain Reservation Footer
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Button    ${FOOTER_RESERVATION_BUTTON}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Reservation Footer In English
    ELSE
        Page Should Contain Reservation Footer In Indonesian
    END

# TODO: pindah ke footer dan direname keywordnya

Page Should Contain Support Footer
    [Arguments]    ${LANGUAGE_DEFAULT}
    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${FOOTER_EN_SUPPORT_MAIN_HEADER}
        Page Should Contain    ${FOOTER_EN_SUPPORT_MAIN_HEADER_2}
        Page Should Contain    ${FOOTER_EN_SUPPORT_BUTTON_LABEL}
    ELSE
        Page Should Contain    ${FOOTER_ID_SUPPORT_MAIN_HEADER}
        Page Should Contain    ${FOOTER_ID_SUPPORT_MAIN_HEADER_2}
        Page Should Contain    ${FOOTER_ID_SUPPORT_BUTTON_LABEL}
    END
    Page Should Contain Element    ${FOOTER_SUPPORT_BUTTON}
