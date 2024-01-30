*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot


*** Variables ***
${TAC_ID_MAIN_HEADER} =                 Syarat Keterlibatan,
${TAC_ID_MAIN_HEADER_2} =               Mari Pelejari Ketentuan Kami
@{TAC_ID_BODY_PARAGRAPHS} =
...                                     Terima kasih atas kunjungan anda ke website, aplikasi dan salah satu layanan produk kami yaitu Joumpa Airport VIP Service. Kami berharap kunjungan anda dapat bermanfaat dan memberi kenyamanan dalam mengakases dan menggunakan seluruh layanan yang tersedia di website dan aplikasi kami.
...                                     Aplikasi dan website dimiliki, dioperasikan, dan dikelola oleh PT Gapura Angkasa, perseroan terbatas yang berdiri atas dasar hukum Republik Indonesia. PT Gapura Angkasa memiliki produk Layanan Airport VIP Service yaitu Joumpa Airport VIP Service dan selanjutnya bersama sama disebut sebagai “Kami” atau “Joumpa”. Layanan kami tersedia secara online melalui website www.joumpa.com atau aplikasi “Joumpa for Customer” yang tersedia di App Store atau Play Store.
...                                     Kami terus bekerja untuk meningkatkan kualitas layanan pelanggan kami. Kami selalu terbuka untuk menerima umpan balik, kritik, atau saran dari Anda, yang dapat dilakukan melalui email, telepon, atau WhatsApp:
@{TAC_ID_BODY_LIST} =                   1. Umum
...                                     2. Penggunaan
...                                     3. Layanan Joumpa Airport VIP
...                                     4. Pemesanan / Pembelian Produk
...                                     5. Harga Produk dan Promo
...                                     6. Pembayaran
...                                     7. Perubahan dan Pembatalan
...                                     8. Keamanan
...                                     9. Kebijakan Penggunaan Data
...                                     10. Ketentuan Lainnya

${TAC_EN_MAIN_HEADER} =                 Terms of Engagement,
${TAC_EN_MAIN_HEADER_2} =               Let’s Dive into Our Conditions
@{TAC_EN_BODY_PARAGRAPHS} =
...                                     Thank you for your visit to the website, application and one of our product services, namely Joumpa Airport VIP Service. We hope that your visit will be useful and provide comfort in accessing and using all services available on our website and application.
...                                     The application and website are owned, operated and managed by PT Gapura Angkasa, a limited liability company founded on the laws of the Republic of Indonesia. PT Gapura Angkasa has an Airport VIP Service product, namely Joumpa Airport VIP Service and hereinafter collectively referred to as "We" or "Joumpa". Our services are available online through the website www.joumpa.com or the “Joumpa for Customer” application available on the App Store or Play Store.
...                                     We are constantly working to improve the quality of our customer service. We are always open to receiving feedback, criticism or suggestions from you, which can be done via email, telephone or WhatsApp:
@{TAC_EN_BODY_LIST} =                   1. General
...                                     2. Usage
...                                     3. Joumpa Airport VIP Service
...                                     4. Product Orders / Purchases
...                                     5. Product Prices and Promotions
...                                     6. Payment
...                                     7. Changes and Cancellations
...                                     8. Security
...                                     9. Data Usage Policy
...                                     10. Other Terms

@{TAC_EXPAND_BODY_LIST} =               //*[@id="informations"]/div[2]/div[2]/div[1]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[2]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[3]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[4]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[5]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[6]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[7]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[8]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[9]/div[1]/div[2]/span
...                                     //*[@id="informations"]/div[2]/div[2]/div[10]/div[1]/div[2]/span
...                                     ${EMPTY}

@{TAC_EN_BODY_DESCRIPTION_LIST} =
...                                     By accessing and using our Joumpa Airport VIP Service application, website or service, you acknowledge that you have read, understood, agreed and stated that you are subject to these Terms and Conditions for using
...                                     In this website or application there may be links to websites managed by third parties ('External Sites') who cooperate with us.
...                                     PT. Gapura Angkasa provides and organizes Airport VIP Assistance services that provide convenience and comfort for you in accompanying the procedure process while at the airport for both domestic and international flights.
...                                     Product orders / purchases can be made within 24 hours prior to Arrival / Departure / Transfer services.
...                                     Kami terus berupaya memberikan harga terbaik dan/atau promo dari waktu ke waktu bagi Anda dalam rangka memberikan kenyamanan dan kemudahan dalam menggunakan layanan Kami. Harga yang tertera mungkin memiliki syarat dan ketentuan khusus, jadi Anda harus memeriksa sendiri dan memahami syarat dan ketentuan khusus yang berlaku terhadap suatu harga atau tarif tertentu sebelum Anda melakukan pemesanan.
...                                     Settlement/payment for the Products ordered is a condition for using our services.
...                                     By ordering or purchasing products on the Website www.joumpa.com and the joumpa for customer application, you are deemed to have understood, accepted and agreed to this cancellation policy and terms.
...                                     We use Secure Server Layer (SSL) access which will encrypt the information you send through this Website, in order to maintain the security of the information you provide on our Website.
...                                     We will not disclose the personal data that you have entered on our website to the public in any form.
...                                     These general terms and conditions are subject to the laws of the Republic of Indonesia.

@{TAC_ID_BODY_DESCRIPTION_LIST} =
...                                     Syarat dan Ketentuan Umum ini terdiri atas (i) Syarat dan Ketentuan Umum yang berlaku untuk setiap akses dan Layanan yang tersedia pada Website, dan (ii) syarat dan ketentuan khusus yang mengatur lebih lanjut ketentuan penggunaan produk atau Layanan tertentu.
...                                     Dalam website atau aplikasi ini mungkin terdapat link (tautan) ke website yang dikelola oleh pihak ketiga (“Situs Eksternal”) yang melakukan kerjasama dengan Kami.
...                                     PT. Gapura Angkasa menyediakan dan menyelenggarakan layanan Airport VIP Assitance yang memberikan kemudahan, kenyamanan bagi Anda dalam mendampingi proses prosedur selama di bandara baik penerbangan domestic maupun international.
...                                     Pemesanan / pembelian produk dapat dilakukan dalam rentang waktu 24 jam sebelum layanan Arrival / Departure / Transfer.
...                                     Kami terus berupaya memberikan harga terbaik dan/atau promo dari waktu ke waktu bagi Anda dalam rangka memberikan kenyamanan dan kemudahan dalam menggunakan layanan Kami. Harga yang tertera mungkin memiliki syarat dan ketentuan khusus, jadi Anda harus memeriksa sendiri dan memahami syarat dan ketentuan khusus yang berlaku terhadap suatu harga atau tarif tertentu sebelum Anda melakukan pemesanan.
...                                     Pelunasan/pembayaran atas Produk yang dipesan merupakan syarat untuk menggunakan layanan Kami.
...                                     Anda dapat melakukan perubahan terhadap data pesanan anda maksimal 24 jam atau 1 (satu) hari sebelum menggunakan layanan kami. Adapun data pesanan yang dapat dirubah:
...                                     Kami menggunakan akses Secure Server Layer (SSL) yang akan mengenkripsi informasi yang Anda kirimkan melalui Website ini, guna menjaga keamanan informasi yang anda berikan dalam Website Kami.
...                                     Kami tidak akan mengungkapkan data diri yang telah anda masukan dalam Website Kami kepada publik dalam bentuk apapun.
...                                     Syarat dan ketentuan umum ini tunduk pada hukum Negara Republik Indonesia.


*** Keywords ***
Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${TAC_EN_MAIN_HEADER}
        Page Should Contain    ${TAC_EN_MAIN_HEADER_2}

        FOR    ${body_paragraph}    IN    @{TAC_EN_BODY_PARAGRAPHS}
            Log    ${body_paragraph}
        END

        ${length} =    Get Length    ${TAC_EN_BODY_LIST}
        FOR    ${index}    IN RANGE    0    ${length}
            Page Should Contain    ${TAC_EN_BODY_LIST[${index}]}
            Scroll Element Into View    xpath:${TAC_EXPAND_BODY_LIST[${index}]}
            Click Element    ${TAC_EXPAND_BODY_LIST[${index}]}
            Page Should Contain    ${TAC_EN_BODY_DESCRIPTION_LIST}[${index}]
        END
    ELSE
        Page Should Contain    ${TAC_ID_MAIN_HEADER}
        Page Should Contain    ${TAC_ID_MAIN_HEADER_2}

        FOR    ${body_paragraph}    IN    @{TAC_ID_BODY_PARAGRAPHS}
            Log    ${body_paragraph}
        END

        ${length} =    Get Length    ${TAC_ID_BODY_LIST}
        FOR    ${index}    IN RANGE    0    ${length}
            Page Should Contain    ${TAC_ID_BODY_LIST[${index}]}
            Scroll Element Into View    xpath:${TAC_EXPAND_BODY_LIST[${index}]}
            Click Element    ${TAC_EXPAND_BODY_LIST[${index}]}
            Page Should Contain    ${TAC_ID_BODY_DESCRIPTION_LIST}[${index}]
        END
    END

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}
