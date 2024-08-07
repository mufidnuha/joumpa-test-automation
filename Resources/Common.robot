*** Settings ***
Library     SeleniumLibrary
Library     XML
Resource    ./../Resources/Common.robot
Resource    ./../Resources/PO/HomePage.robot
Resource    ./../Resources/PO/ProductsPage.robot
Resource    ./../Resources/PO/OurLocationPage.robot
Resource    ./../Resources/PO/ManageBookingPage.robot
Resource    ./../Resources/PO/ContactUsPage.robot
Resource    ./../Resources/PO/LoginPage.robot
Resource    ./../Resources/PO/MeetAndGreetPage.robot
Resource    ./../Resources/PO/TransferPage.robot
Resource    ./../Resources/PO/ReservationFlightPage.robot
Resource    ./../Resources/PO/TermsAndConditionPage.robot
Resource    ./../Resources/PO/PrivacyPolicyPage.robot


*** Variables ***
${BROWSER}                          chrome
${START_URL}                        https://www.joumpa.com/
${PATH_PRODUCTS}                    products
${PATH_PRODUCTS_MEET_AND_GREET}     product/detail/meet-and-greet
${PATH_PRODUCTS_TRANSFER}           product/detail/transfer
${PATH_OUR_LOCATION}                our-location
${PATH_MANAGE_BOOKING}              manage-booking
${PATH_CONTACT_US}                  support
${PATH_TERMS_AND_CONDITIONS}        terms-condition
${PATH_PRIVACY_POLICY}              privacy-policy
${PATH_RESERVATION}                 reservation
${LOGIN_URL}                        https://admin.joumpa.apps360.id/
${GAPURA_URL}                       https://gapura.id/about-us-uk
${GOOGLE_PLAY_STORE_URL}            https://play.google.com/store/apps/details?id=id.bigio.gapura.joumpa
${APP_STORE_URL}                    https://apps.apple.com/id/app/joumpa-for-customer/id1600399708?l=id
${WHATSAPP_HOTLINE_URL}             https://api.whatsapp.com/send?phone=+628118566009&text=Hi%20Admin%20JOUMPA

${LANGUAGE_EN}                      EN
${LANGUAGE_ID}                      ID
${LANGUAGE_DEFAULT}                 ${LANGUAGE_EN}

${FLIGHT_TYPE_ARRIVAL}              arrival
${FLIGHT_TYPE_DEPARTURE}            departure
${FLIGHT_TYPE_TRANSFER}             transfer
${FLIGHT_TYPE_DEFAULT}              ${FLIGHT_TYPE_ARRIVAL}

${BACKGROUND_IS_SELECTED_COLOR}     rgb(236, 245, 235)
${CHECKMARK_IS_SELECTED_COLOR}      rgb(99, 174, 92)
${BUTTON_IS_SELECTED_COLOR}         rgb(99, 174, 92)

${WHATSAPP_FLOATING_BUTTON}         //*[@id="root"]/a

${TITLE_MR}                         Mr.
${TITLE_MRS}                        Mrs.
${TITLE_MS}                         Ms.
${TITLE_CHILD}                      Child
${TITLE_INFANT}                     Infant


*** Keywords ***
Begin Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

Navigate To Location
    [Arguments]    ${START_URL}    ${PATH}
    ${URL} =    Set Variable    ${START_URL}${PATH}
    Go To    ${URL}

Loaded All Pages
    [Arguments]    ${language}
    HomePage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_PRODUCTS}
    ProductsPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_OUR_LOCATION}
    OurLocationPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_MANAGE_BOOKING}
    ManageBookingPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_CONTACT_US}
    ContactUsPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_TERMS_AND_CONDITIONS}
    TermsAndConditionPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_PRIVACY_POLICY}
    PrivacyPolicyPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_PRODUCTS_MEET_AND_GREET}
    MeetAndGreetPage.Display Correctly    ${language}

    Common.Navigate To Location    ${START_URL}    ${PATH_PRODUCTS_TRANSFER}
    TransferPage.Display Correctly    ${language}

    Common.Navigate To Location    ${LOGIN_URL}    ${EMPTY}
    LoginPage.Display Correctly    ${language}

All Page Displayed in English
    Loaded All Pages    ${LANGUAGE_EN}

All Page Displayed in Indonesian
    Loaded All Pages    ${LANGUAGE_ID}

Element Should Contain Date
    [Arguments]    ${xpath}    ${date}    ${month}    ${year}
    ${arrival_date_input} =    SeleniumLibrary.Get Element Attribute    ${xpath}    value
    Should Be Equal    ${arrival_date_input}    ${year}-${month}-${date}

Convert Dictionary Values To Lowercase
    [Arguments]    &{input_dict}
    ${result_dict} =    Create Dictionary
    FOR    ${key}    ${value}    IN    &{input_dict}
        Set To Dictionary    ${result_dict}    ${key}=${value.lower()}
    END
    RETURN    ${result_dict}
