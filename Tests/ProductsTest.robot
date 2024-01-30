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
TC-M02-001
    [Documentation]    Verify navigation to "Products" page from "Products" menu
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Home" page
    Click Element    ${HEADER_PRODUCTS}
    ProductsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-002
    [Documentation]    Verify navigation to "Products" page from arrow button in Meet And Greet Service
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Home" page
    Scroll Element Into View    xpath:${HOMEPAGE_SERVICES_MEET_AND_GREET_ARROW}
    Click Element    ${HOMEPAGE_SERVICES_MEET_AND_GREET_ARROW}
    ProductsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-003
    [Documentation]    Verify navigation to "Products" page from arrow button in Transfer Service
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Home" page
    Scroll Element Into View    xpath:${HOMEPAGE_SERVICES_TRANSFER_ARROW}
    Click Element    ${HOMEPAGE_SERVICES_TRANSFER_ARROW}
    ProductsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-004
    [Documentation]    Verify navigation to "Meet And Greet Service" page from "read more" button in Meet And Greet Service
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Product" Page
    Click Element    ${PRODUCTS_MEET_AND_GREET_READ_MORE_BUTTON}
    MeetAndGreetPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-005
    [Documentation]    Verify navigation to "Transfer Service" page from "read more" button in Transfer Service
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Product" Page
    Click Element    ${PRODUCTS_TRANSFER_READ_MORE_BUTTON}
    TransferPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-006
    [Documentation]    Verify navigation to "Products" page from back button in Meet And Greet Service page
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Meet And Greet Service" Page
    Click Element    ${MAG_BACK_BUTTON}
    ProductsPage.Display Correctly    ${LANGUAGE_DEFAULT}

TC-M02-007
    [Documentation]    Verify navigation to "Products" page from back button in Transfer Service page
    [Tags]    ts-m02-008    m-pub-02    products    web public
    User located in "Transfer Service" Page
    Click Element    ${TRANSFER_BACK_BUTTON}
    ProductsPage.Display Correctly    ${LANGUAGE_DEFAULT}
