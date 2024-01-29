*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot


*** Variables ***
${LOGIN_EN_TITLE} =                     Login
${LOGIN_EN_TITLE_2} =                   Welcome to Joumpa Back Office Website
${LOGIN_EN_EMAIL_LABEL} =               Email
${LOGIN_EN_PASSWORD_LABEL} =            Password
${LOGIN_EN_FORGET_PASSWORD_LABEL} =     Forgot Password

${LOGIN_ID_TITLE} =                     Masuk
${LOGIN_ID_TITLE_2} =                   Masuk ke Website Back Office Joumpa
${LOGIN_ID_EMAIL_LABEL} =               Email
${LOGIN_ID_PASSWORD_LABEL} =            Kata Sandi
${LOGIN_ID_FORGET_PASSWORD_LABEL} =     Lupa Kata Sandi

${LOGIN_MAIN_HEADER} =                  Airport Service for Your Journey Companion
${LOGIN_COPYRIGHT_LABEL} =              Copyright © 2021 PT Gapura Angkasa

${LOGIN_JOUMPA_LOGO} =                  //*[@id="root"]/div[2]/div/div[1]/img
${LOGIN_EMAIL_INPUT} =                  //*[@id="root"]/div[2]/div/div[1]/div/form/div[1]/div/input
${LOGIN_PASSWORD_INPUT} =               //*[@id="root"]/div[2]/div/div[1]/div/form/div[2]/div/input
${LOGIN_PASSWORD_VISIBILITY_ICON} =     //*[@id="root"]/div[2]/div/div[1]/div/form/div[2]/div/span
${LOGIN_FORGET_PASSWORD_LINK} =         //*[@id="root"]/div[2]/div/div[1]/div/form/div[3]/div/a
${LOGIN_LOGIN_BUTTON} =                 //*[@id="root"]/div[2]/div/div[1]/div/form/div[4]/button


*** Keywords ***
Page Should Contain Login In English
    Page Should Contain    ${LOGIN_EN_TITLE}
    Page Should Contain    ${LOGIN_EN_TITLE_2}
    Page Should Contain    ${LOGIN_EN_EMAIL_LABEL}
    Page Should Contain    ${LOGIN_EN_PASSWORD_LABEL}
    Page Should Contain    ${LOGIN_EN_FORGET_PASSWORD_LABEL}

Page Should Contain Login In Indonesian
    Page Should Contain    ${LOGIN_ID_TITLE}
    Page Should Contain    ${LOGIN_ID_TITLE_2}
    Page Should Contain    ${LOGIN_ID_EMAIL_LABEL}
    Page Should Contain    ${LOGIN_ID_PASSWORD_LABEL}
    Page Should Contain    ${LOGIN_ID_FORGET_PASSWORD_LABEL}

Display Correctly
    [Arguments]    ${LANGUAGE}
    Page Should Contain Image    ${LOGIN_JOUMPA_LOGO}
    Page Should Contain    ${LOGIN_MAIN_HEADER}

    IF    "${LANGUAGE}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain Login In English
    ELSE
        Page Should Contain Login In Indonesian
    END
    Page Should Contain Textfield    ${LOGIN_EMAIL_INPUT}
    Page Should Contain Textfield    ${LOGIN_PASSWORD_INPUT}
    Page Should Contain Element    ${LOGIN_PASSWORD_VISIBILITY_ICON}
    Page Should Contain Element    ${LOGIN_FORGET_PASSWORD_LINK}
    Page Should Contain Button    ${LOGIN_LOGIN_BUTTON}

    Page Should Contain    ${LOGIN_COPYRIGHT_LABEL}
