*** Settings ***
Library     SeleniumLibrary
Resource    ../Header.robot
Resource    ../Footer.robot


*** Variables ***
${PP_ID_MAIN_HEADER} =              Menghormati Privasi Anda,
${PP_ID_MAIN_HEADER_2} =            Pelajari Kebijakan Kami
@{PP_ID_BODY_PARAGRAPHS} =
...                                 Selamat datang di website Joumpa Airport VIP Service. Aplikasi dan website dimiliki, dioperasikan, dan dikelola oleh PT Gapura Angkasa, perseroan terbatas yang berdiri atas dasar hukum Republik Indonesia. PT Gapura Angkasa memiliki produk Layanan Airport VIP Service yaitu Joumpa Airport VIP Service dan selanjutnya bersama sama disebut sebagai “Kami” atau “Joumpa”. Layanan kami tersedia secara online melalui website: www.joumpa.com atau aplikasi mobile: “Joumpa for Customer” untuk IOS dan untuk Android.
...                                 Kebijakan Privasi ini menjelaskan rincian informasi yang kami dapat kumpulkan dari Anda dan bagaimana kami dapat menggunakan informasi tersebut. Mohon untuk membaca secara keseluruhan Kebijakan Privasi ini dengan saksama.
@{PP_ID_BODY_LIST} =                1. Informasi Data Pribadi
...                                 2. Penggunaan Informasi Data Pribadi
...                                 3. Akses ke Perbaikan dan Penghapusan Data Pribadi
...                                 4. Penyimpanan Data Pribadi
...                                 5. Keamanan Data Pribadi
...                                 6. Perubahan Kebijakan Privasi ini
...                                 7. Persetujuan
...                                 8. Hubungi Kami

${PP_EN_MAIN_HEADER} =              Respecting Your Privacy,
${PP_EN_MAIN_HEADER_2} =            Dive into Our Policy
@{PP_EN_BODY_PARAGRAPHS} =
...                                 Welcome to the Joumpa Airport VIP Service website. The application and website are owned, operated and managed by PT Gapura Angkasa, a limited liability company founded on the laws of the Republic of Indonesia. PT Gapura Angkasa has an Airport VIP Service product, namely Joumpa Airport VIP Service and hereinafter collectively referred to as 'We' or 'Joumpa'. Our services are available online through the website: www.joumpa.com or mobile application: “Joumpa for Customer” for IOS and for Android.
...                                 This Privacy Policy describes details of the information we may collect from you and how we may use that information. Please read this Privacy Policy in its entirety carefully.
@{PP_EN_BODY_LIST} =                1. Personal Data Information
...                                 2. Use of Personal Data Information
...                                 3. Access to Correction and Deletion of Personal Data
...                                 4. Storage of Personal Data
...                                 5. Personal Data Security
...                                 6. Changes to this Privacy Policy
...                                 7. Agreement
...                                 8. Contact Us

@{PP_EXPAND_BODY_LIST} =            //*[@id="informations"]/div[2]/div[2]/div[1]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[2]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[3]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[4]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[5]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[6]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[7]/div[1]/div[2]/span
...                                 //*[@id="informations"]/div[2]/div[2]/div[8]/div[1]/div[2]/span

@{PP_ID_BODY_DESCRIPTION_LIST} =
...                                 Kami mengumpulkan dan memproses jenis informasi data pribadi sebagai berikut
...                                 Dengan mengakses website dan aplikasi kami melalui sarana apapun, memesan layanan Joumpa Airport VIP Service melalui saluran online kami, saluran offline kami, dan saluran secara tidak langsung lainnya, Anda setuju bahwa informasi pribadi Anda dapat dikumpulkan, disimpan, digunakan, dan dibagikan oleh kami, pihak ketiga yang bekerjasama dengan kami.
...                                 Anda berhak untuk mengakses, memperbaiki, mengubah dan atau menghapus Data Pribadi yang telah Anda berikan dan telah tersimpan dalam sistem Kami dengan cara menghubungi Contact Center Kami dan/atau melalui fitur yang terdapat pada aplikasi Kami. Kami berhak menolak permintaan Anda untuk mengakses, memperbaiki atau menghapus sebagian atau semua Data Pribadi Anda yang Kami simpan atau kendalikan selama diizinkan atau diwajibkan berdasarkan hukum yang berlaku. Hal ini mungkin termasuk dalam keadaan di mana Data Pribadi Anda memuat referensi ke individu lain atau di mana permintaan untuk mengakses, memperbaiki atau menghapus adalah untuk alasan yang Kami anggap dapat memerlukan upaya teknis yang tidak proposional atau dapat menimbulkan risiko operasional.
...                                 Kecuali kami menghapus Data Pribadi Anda dari sistem kami setelah menerima permintaan dari Anda, Data Pribadi Anda akan disimpan oleh kami selama akun ada masih ada, dan selama dibutuhkan untuk menyediakan jasa kami kepada Anda, dan/atau kepentingan bisnis yang sah atau untuk selama penyimpanan diwajibkan atau diizinkan oleh peraturan perundangan yang berlaku.
...                                 Anda harus segera memberitahukan kepada Kami mengenai adanya penggunaan sandi atau akun tanpa izin Anda atau semua bentuk pelanggaran atau ancaman pelanggaran keamanan dalam website ini.
...                                 Kami berhak untuk melakukan perubahan, penambahan dan atau pengurangan seluruh ataupun sebagian ketentuan dari Kebijakan Privasi ini dari waktu ke waktu tanpa pemberitahuan terlebih dahulu dan segala perubahan yang Kami lakukan akan Kami beritahukan melalui Layanan Online. Kami mengharapkan agar Anda dapat secara berkala memeriksa mengenai kebijakan ini. Dengan tetap mengakses dan menggunakan Layanan Online Kami maka Anda dianggap menyetujui perubahan-perubahan yang mungkin ada dalam Kebijakan Privasi ini.
...                                 Dengan membaca seluruh ketentuan ini, mengakses dan menggunakan Layanan Online Kami, maka Anda dianggap menyatakan telah diberitahukan, membaca, memahami, menyetujui, dan menyatakan tunduk pada Kebijakan Privasi ini beserta perubahan-perubahan yang mungkin Kami lakukan dari waktu ke waktu. Anda menyatakan bahwa setiap Data Pribadi yang Anda berikan merupakan data yang benar dan sah. Anda dapat menarik kembali persetujuan Anda dengan menghubungi Customer Service Kami.
...                                 Jika Anda memiliki pertanyaan atau membutuhkan informasi lebih lanjut, Anda dapat menghubungi Kami sesuai detail alamat dibawah ini:

@{PP_EN_BODY_DESCRIPTION_LIST} =
...                                 We will ask you to fill in your personal data clearly, correctly, completely and up to date, such as name, nationality, email, telephone number, origin, destination, airline name, flight number, service date, service time.
...                                 By accessing our website and application through any means, ordering Joumpa Airport VIP Service services through our online channels, our offline channels, and other indirect channels, you agree that your personal information can be collected, stored, used and shared by us, third parties we work with.
...                                 You have the right to access, correct, change and or delete the Personal Data that you have provided and stored in our system by contacting our contact center and/or through the features in our application. We have the right to refuse your request to access, correct or delete some or all of your Personal Data that we store or control as long as permitted or required under applicable law. This may include circumstances where your Personal Data contains references to other individuals or where requests to access, correct or delete are for reasons that we think may require disproportionate technical effort or may pose operational risks.
...                                 Unless we delete your Personal Data from our system after receiving a request from you, your Personal Data will be stored by us as long as the account exists, and as long as necessary to provide our services to you, and/or legitimate business interests or for as long as storage is required or permitted by applicable laws and regulations.
...                                 You are fully responsible for the confidentiality of your Personal Data, including being responsible for all access and use of Online Services including passwords, accounts, and tokens. For the security of your data confidentiality, We strongly recommend storing your account and password safely and/or changing your password periodically. You are responsible for any use without permission and/or without your knowledge and we are not responsible for any losses arising from your negligence.
...                                 We reserve the right to make changes, additions and/or reductions in all or part of the provisions of this Privacy Policy from time to time without prior notification and we will notify all changes that we make through the Online Service. We expect that you can periodically check regarding this policy. By continuing to access and use our Online Services, you are deemed to agree to changes that may exist in this Privacy Policy.
...                                 By reading all of these terms, accessing and using our Online Services, you are deemed to have stated that you have been notified, read, understood, agreed, and stated that you are subject to this Privacy Policy and the changes that we may make from time to time. You declare that any Personal Data that you provide is correct and valid data. You can withdraw your consent by contacting our Customer Service.
...                                 If you have questions or need further information, you can contact us according to the address details below:


*** Keywords ***
Display Correctly
    [Arguments]    ${LANGUAGE_DEFAULT}
    Page Should Contain Header    ${LANGUAGE_DEFAULT}

    IF    "${LANGUAGE_DEFAULT}" == "${HEADER_EN_LANGUAGE_LABEL}"
        Page Should Contain    ${PP_EN_MAIN_HEADER}
        Page Should Contain    ${PP_EN_MAIN_HEADER_2}

        FOR    ${body_paragraph}    IN    @{PP_EN_BODY_PARAGRAPHS}
            Log    ${body_paragraph}
        END

        ${length} =    Get Length    ${PP_EN_BODY_LIST}
        FOR    ${index}    IN RANGE    0    ${length}
            Page Should Contain    ${PP_EN_BODY_LIST[${index}]}
            Scroll Element Into View    xpath:${PP_EXPAND_BODY_LIST[${index}]}
            Click Element    ${PP_EXPAND_BODY_LIST[${index}]}
            Page Should Contain    ${PP_EN_BODY_DESCRIPTION_LIST}[${index}]
        END
    ELSE
        Page Should Contain    ${PP_ID_MAIN_HEADER}
        Page Should Contain    ${PP_ID_MAIN_HEADER_2}

        FOR    ${body_paragraph}    IN    @{PP_ID_BODY_PARAGRAPHS}
            Log    ${body_paragraph}
        END

        ${length} =    Get Length    ${PP_ID_BODY_LIST}
        FOR    ${index}    IN RANGE    0    ${length}
            Page Should Contain    ${PP_ID_BODY_LIST[${index}]}
            Scroll Element Into View    xpath:${PP_EXPAND_BODY_LIST[${index}]}
            Click Element    ${PP_EXPAND_BODY_LIST[${index}]}
            Page Should Contain    ${PP_ID_BODY_DESCRIPTION_LIST}[${index}]
        END
    END

    Page Should Contain Reservation Footer    ${LANGUAGE_DEFAULT}
    Page Should Contain Main Footer    ${LANGUAGE_DEFAULT}
