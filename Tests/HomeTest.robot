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
Verify navigation to "Home" page when access joumpa.com
    [Documentation]    TC-PUB-001
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    Common.Load    ${START_URL}    ${EMPTY}
    HomePage.Display Correctly    ${LANGUAGE}

Verify navigation to "Home" page from Joumpa logo in header
    [Documentation]    TC-PUB-002
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Click Element    ${HEADER_JOUMPA_LOGO}
    HomePage.Display Correctly    ${LANGUAGE}

Verify navigation to "Home" page from "Home" menu in header
    [Documentation]    TC-PUB-003
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Click Element    ${HEADER_HOME}
    HomePage.Display Correctly    ${LANGUAGE}

Verify navigation to "Home" page from "About Joumpa" in footer
    [Documentation]    TC-PUB-004
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_ABOUT_JOUMPA}
    Click Element    ${FOOTER_ABOUT_JOUMPA}
    HomePage.Display Correctly    ${LANGUAGE}

Verify 7 points of "Why Joumpa" section in Home page
    [Documentation]    TC-PUB-005
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[0]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[1]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[2]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[3]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[4]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[5]
    Page Should Contain    ${HOMEPAGE_EN_WHY_JOUMPA_LIST}[6]

Verify navigation to "Terms and Condition" page from footer
    [Documentation]    TC-PUB-007
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_TERMS_AND_CONDITION}
    Click Element    ${FOOTER_TERMS_AND_CONDITION}
    TermsAndConditionPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Privacy Policy" page from footer
    [Documentation]    TC-PUB-008
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_PRIVACY_POLICY}
    Click Element    ${FOOTER_PRIVACY_POLICY}
    PrivacyPolicyPage.Display Correctly    ${LANGUAGE}

Verify navigation to https://gapura.id/about-us-uk from "About Gapura" in footer
    [Documentation]    TC-PUB-009
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_ABOUT_GAPURA}
    Click Element    ${FOOTER_ABOUT_GAPURA}
    Switch Window    NEW
    Location Should Be    ${GAPURA_URL}
    Wait Until Page Contains    About Us

Verify navigation to https://play.google.com/store/apps/details?id=id.bigio.gapura.joumpa from Google Play Store logo
    [Documentation]    TC-PUB-010
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO}
    Click Element    ${FOOTER_DOWNLOAD_GOOGLE_PLAY_LOGO}
    Switch Window    NEW
    Location Should Be    ${GOOGLE_PLAY_STORE_URL}
    Wait Until Page Contains    Joumpa for Customer

Verify navigation to https://apps.apple.com/id/app/joumpa-for-customer/id1600399708?l=id from App Store logo
    [Documentation]    TC-PUB-011
    [Tags]    ts-pub-001    urd-pub-001    home    web public
    User located in "Home" page
    User located in "Home" page
    Scroll Element Into View    ${FOOTER_DOWNLOAD_APP_STORE_LOGO}
    Click Element    ${FOOTER_DOWNLOAD_APP_STORE_LOGO}
    Switch Window    NEW
    Location Should Be    ${APP_STORE_URL}
    Wait Until Page Contains    JOUMPA for Customer
