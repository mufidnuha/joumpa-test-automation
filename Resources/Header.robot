*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${header_joumpa_logo} =                 //a[@class="navbar-brand"]/img
${header_home} =                        //div[@class="main-navbar "]//ul/li[1]/a
${header_products} =                    //div[@class="main-navbar "]//ul/li[2]/a
${header_our_location} =                //div[@class="main-navbar "]//ul/li[3]/a
${header_manage_booking} =              //div[@class="main-navbar "]//ul/li[4]/a
${header_contact_us} =                  //div[@class="main-navbar "]//ul/li[5]/a
${header_login_button} =                //div[@class="main-navbar "]//ul/li[7]//button

${header_language_flag} =               //div[@class="main-navbar "]//ul/li[6]//img
${header_language_id_button} =          //button[text()="English"]
${header_language_en_button} =          //button[text()="Indonesian"]
${header_language_active} =             //div[@class="main-navbar "]//ul/li[6]/a/span

${header_en_home_label} =               Home
${header_en_products_label} =           Products
${header_en_our_location_label} =       Our Location
${header_en_manage_booking_label} =     Manage Booking
${header_en_contact_us_label} =         Contact Us
${header_en_language_label} =           EN

${header_id_home_label} =               Beranda
${header_id_products_label} =           Produk
${header_id_our_location_label} =       Alamat Kami
${header_id_manage_booking_label} =     Kelola Pesanan
${header_id_contact_us_label} =         Hubungi Kami
${header_id_language_label} =           ID

${header_en_reservation_title} =        Book Your Assistant
${header_id_reservation_title} =        Pesan Asisten Anda


*** Keywords ***
Page Should Contain In English
    Page Should Contain    ${header_en_home_label}
    Page Should Contain    ${header_en_products_label}
    Page Should Contain    ${header_en_our_location_label}
    Page Should Contain    ${header_en_manage_booking_label}
    Page Should Contain    ${header_en_contact_us_label}
    Page Should Contain    ${header_en_language_label}

Page Should Contain In Indonesian
    Page Should Contain    ${header_id_home_label}
    Page Should Contain    ${header_id_products_label}
    Page Should Contain    ${header_id_our_location_label}
    Page Should Contain    ${header_id_manage_booking_label}
    Page Should Contain    ${header_id_contact_us_label}
    Page Should Contain    ${header_id_language_label}

Page Should Contain Header
    [Arguments]    ${LANGUAGE_DEFAULT}

    Page Should Contain Image    ${header_joumpa_logo}
    Page Should Contain Element    ${header_home}
    Page Should Contain Element    ${header_products}
    Page Should Contain Element    ${header_our_location}
    Page Should Contain Element    ${header_manage_booking}
    Page Should Contain Element    ${header_contact_us}
    Page Should Contain Element    ${header_language_flag}
    Page Should Contain Button    ${header_login_button}

    IF    "${LANGUAGE_DEFAULT}" == "${header_en_language_label}"
        Page Should Contain In English
    ELSE
        Page Should Contain In Indonesian
    END
