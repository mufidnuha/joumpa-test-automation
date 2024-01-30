*** Settings ***
Documentation       Testing joumpa

Resource            ./../Resources/Common.robot
Resource            ./../Resources/Footer.robot
Resource            ./../Resources/PO/HomePage.robot
Resource            ./../Resources/PO/ProductsPage.robot
Resource            ./../Resources/PO/OurLocationPage.robot
Resource            ./../Resources/PO/ManageBookingPage.robot
Resource            ./../Resources/PO/ContactUsPage.robot
Resource            ./../Resources/PO/LoginPage.robot
Resource            ./../Resources/PO/MeetAndGreetPage.robot
Resource            ./../Resources/PO/TransferPage.robot
Resource            ./../Resources/PO/ReservationFlightPage.robot
Resource            ./../Resources/PO/TermsAndConditionPage.robot
Resource            ./../Resources/PO/PrivacyPolicyPage.robot

Test Setup          Common.Begin Web Test    ${BROWSER}
Test Teardown       Common.End Web Test
# robot -d results Tests/HomeTest.robot


*** Test Cases ***
TC-M01-001
    [Documentation]    Verify navigation to "Home" page when access joumpa.com
    [Tags]    ts-m01-001    m-pub-01    home    web public
    Common.Navigate To Location    ${START_URL}    ${EMPTY}
    HomePage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-002
    [Documentation]    Verify navigation to "Home" page from Joumpa logo in header
    [Tags]    ts-m01-001    m-pub-01    home    web public

    User located in "Home" page
    Click Element    ${HEADER_JOUMPA_LOGO}
    HomePage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-003
    [Documentation]    Verify navigation to "Home" page from "Home" menu in header
    [Tags]    ts-m01-001    m-pub-01    home    web public
    User located in "Home" page
    Click Element    ${HEADER_HOME}
    HomePage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-004
    [Documentation]    Verify navigation to "Home" page from "About Joumpa" in footer
    [Tags]    ts-m01-001    m-pub-01    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_ABOUT_JOUMPA}
    Click Element    ${FOOTER_ABOUT_JOUMPA}
    HomePage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-005
    [Documentation]    Verify 7 points of "Why Joumpa" section in Home page
    [Tags]    ts-m01-002    m-pub-01    home    web public
    User located in "Home" page
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[0]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[1]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[2]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[3]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[4]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[5]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[6]

TC-M01-007
    [Documentation]    Verify navigation to "Terms and Condition" page from footer
    [Tags]    ts-m01-004    m-pub-01    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_TERMS_AND_CONDITION}
    Click Element    ${FOOTER_TERMS_AND_CONDITION}
    TermsAndConditionPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-008
    [Documentation]    Verify navigation to "Privacy Policy" page from footer
    [Tags]    ts-m01-005    m-pub-01    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_PRIVACY_POLICY}
    Click Element    ${FOOTER_PRIVACY_POLICY}
    PrivacyPolicyPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M01-009
    [Documentation]    Verify navigation to https://gapura.id/about-us-uk from "About Gapura" in footer
    [Tags]    ts-m01-006    m-pub-01    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_ABOUT_GAPURA}
    Click Element    ${FOOTER_ABOUT_GAPURA}
    Switch Window    NEW
    Location Should Be    ${GAPURA_URL}
    Wait Until Page Contains    About Us

TC-M01-010
    [Documentation]    Verify navigation to https://play.google.com/store/apps/details?id=id.bigio.gapura.joumpa from Google Play Store logo
    [Tags]    ts-m01-007    m-pub-01    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO}
    Click Element    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO}
    Switch Window    NEW
    Location Should Be    ${GOOGLE_PLAY_STORE_URL}
    Wait Until Page Contains    Joumpa for Customer

TC-M01-011
    [Documentation]    Verify navigation to https://apps.apple.com/id/app/joumpa-for-customer/id1600399708?l=id from App Store logo
    [Tags]    ts-m01-007    m-pub-01    home    web public
    User located in "Home" page
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_DOWNLOAD_APP_STORE_LOGO}
    Click Element    ${FOOTER_DOWNLOAD_APP_STORE_LOGO}
    Switch Window    NEW
    Location Should Be    ${APP_STORE_URL}
    Wait Until Page Contains    JOUMPA for Customer
