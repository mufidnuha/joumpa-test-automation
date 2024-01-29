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
# robot -d results Tests/ProductsTest.robot


*** Test Cases ***
Verify navigation to "Products" page from "Products" menu
    [Documentation]    TC-UR002-001
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Home" page
    Click Element    ${HEADER_PRODUCTS}
    ProductsPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Products" page from arrow button in Meet And Greet Service
    [Documentation]    TC-UR002-002
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Home" page
    Scroll Element Into View    xpath:${HOMEPAGE_SERVICES_MEET_AND_GREET_ARROW}
    Click Element    ${HOMEPAGE_SERVICES_MEET_AND_GREET_ARROW}
    ProductsPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Products" page from arrow button in Transfer Service
    [Documentation]    TC-UR002-003
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Home" page
    Scroll Element Into View    xpath:${HOMEPAGE_SERVICES_TRANSFER_ARROW}
    Click Element    ${HOMEPAGE_SERVICES_TRANSFER_ARROW}
    ProductsPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Meet And Greet Service" page from "read more" button in Meet And Greet Service
    [Documentation]    TC-UR002-004
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Product" Page
    Click Element    ${PRODUCTS_MEET_AND_GREET_READ_MORE_BUTTON}
    MeetAndGreetPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Transfer Service" page from "read more" button in Transfer Service
    [Documentation]    TC-UR002-005
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Product" Page
    Click Element    ${PRODUCTS_TRANSFER_READ_MORE_BUTTON}
    TransferPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Products" page from back button in Meet And Greet Service page
    [Documentation]    TC-UR002-006
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Meet And Greet Service" Page
    Click Element    ${MAG_BACK_BUTTON}
    ProductsPage.Display Correctly    ${LANGUAGE}

Verify navigation to "Products" page from back button in Transfer Service page
    [Documentation]    TC-UR002-007
    [Tags]    ts-ur002-008    ur-pub-002    products    web public
    User located in "Transfer Service" Page
    Click Element    ${TRANSFER_BACK_BUTTON}
    ProductsPage.Display Correctly    ${LANGUAGE}
