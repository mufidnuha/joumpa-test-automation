*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot
Resource    ../Common.robot


*** Variables ***
${PRODUCTS_EN_MAIN_HEADER} =                        Experience the Difference of Our
${PRODUCTS_EN_MAIN_HEADER_2} =                      Professional Services
@{PRODUCTS_EN_SERVICES_HEADER} =                    Meet and Greet Services    Transfer Services
@{PRODUCTS_EN_SERVICES_DESCRIPTION} =
...                                                 This service is provided to help you go through airport procedures during your international or domestic flight with your personal VIP assistant, which will provide you with convenience and comfort.
...                                                 We provide convenience for you when transferring between flight or airport zones. This includes transfer between international flights, domestic flights, or combination of two.

${PRODUCTS_ID_MAIN_HEADER} =                        Temukan Perbedaan Layanan
${PRODUCTS_ID_MAIN_HEADER_2} =                      Profesional Kami
@{PRODUCTS_ID_SERVICES_HEADER} =                    Layanan Meet and Greet    Layanan Transfer
@{PRODUCTS_ID_SERVICES_DESCRIPTION} =
...                                                 Layanan ini disediakan untuk membantu Anda menjalani prosedur bandara selama penerbangan internasional atau domestik dengan asisten VIP pribadi Anda, yang akan memberi Anda kemudahan dan kenyamanan.
...                                                 Kami memberikan kemudahan bagi Anda saat melakukan perpindahan antar zona penerbangan atau bandara. Ini termasuk perpindahan antara penerbangan internasional, penerbangan domestik, atau kombinasi keduanya.

${PRODUCTS_MEET_AND_GREET_READ_MORE_BUTTON} =       //*[@id="product"]/div[1]/div[2]/div/div[3]/button
${PRODUCTS_TRANSFER_READ_MORE_BUTTON} =             //*[@id="product"]/div[2]/div[2]/div/div[3]/button
${PRODUCTS_MEET_AND_GREET_IMAGE} =                  //*[@id="product"]/div[1]/div[1]/img
${PRODUCTS_TRANSFER_IMAGE} =                        //*[@id="product"]/div[2]/div[1]/img


*** Keywords ***
Page Should Contain Meet And Greet Services In English
    Page Should Contain    ${PRODUCTS_EN_SERVICES_HEADER}[0]
    Page Should Contain    ${PRODUCTS_EN_SERVICES_DESCRIPTION}[0]

Page Should Contain Meet And Greet Services In Indonesian
    Page Should Contain    ${PRODUCTS_ID_SERVICES_HEADER}[0]
    Page Should Contain    ${PRODUCTS_ID_SERVICES_DESCRIPTION}[0]

Page Should Contain Meet And Greet Services
    [Arguments]    ${LANGUAGE}
    Page Should Contain Button    ${PRODUCTS_MEET_AND_GREET_READ_MORE_BUTTON}
    Page Should Contain Image    ${PRODUCTS_MEET_AND_GREET_IMAGE}

    IF    "${LANGUAGE}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Meet And Greet Services In English
    ELSE
        Page Should Contain Meet And Greet Services In Indonesian
    END

Page Should Contain Transfer Services In English
    Page Should Contain    ${PRODUCTS_EN_SERVICES_HEADER}[1]
    Page Should Contain    ${PRODUCTS_EN_SERVICES_DESCRIPTION}[1]

Page Should Contain Transfer Services In Indonesian
    Page Should Contain    ${PRODUCTS_ID_SERVICES_HEADER}[1]
    Page Should Contain    ${PRODUCTS_ID_SERVICES_DESCRIPTION}[1]

Page Should Contain Transfer Services
    [Arguments]    ${LANGUAGE}
    Page Should Contain Button    ${PRODUCTS_TRANSFER_READ_MORE_BUTTON}
    Page Should Contain Image    ${PRODUCTS_TRANSFER_IMAGE}

    IF    "${LANGUAGE}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Meet And Greet Services In English
    ELSE
        Page Should Contain Meet And Greet Services In Indonesian
    END

Display Correctly
    [Arguments]    ${LANGUAGE}
    Page Should Contain Header    ${LANGUAGE}

    IF    "${LANGUAGE}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${PRODUCTS_EN_MAIN_HEADER}
        Page Should Contain    ${PRODUCTS_EN_MAIN_HEADER_2}
    ELSE
        Page Should Contain    ${PRODUCTS_ID_MAIN_HEADER}
        Page Should Contain    ${PRODUCTS_ID_MAIN_HEADER_2}
    END
    Page Should Contain Meet And Greet Services    ${LANGUAGE}
    Page Should Contain Transfer Services    ${LANGUAGE}

    Page Should Contain Reservation Footer    ${LANGUAGE}
    Page Should Contain Main Footer    ${LANGUAGE}

User located in "Product" Page
    Common.Navigate To Location    ${START_URL}    ${PATH_PRODUCTS}
    Wait Until Page Contains    ${PRODUCTS_EN_MAIN_HEADER}
