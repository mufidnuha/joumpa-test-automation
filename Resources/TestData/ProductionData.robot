*** Settings ***
Library     DateTime
Resource    ../Common.robot


*** Variables ***
&{prod_airport_surabaya} =                  keyword=Juanda    airport=SUB-Kota Surabaya-Juanda International Airport
&{prod_airport_singapore} =                 keyword=Singapore    airport=SIN-SINGAPORE-CHANGI INTL ARPT -Singapore
&{prod_airport_tangerang} =
...    keyword=cgk
...    airport=CGK-Kota Tangerang-Soekarno Hatta International Airport
&{prod_airport_samarinda} =
...                                         keyword=samarinda
...                                         airport=AAP-Kota Samarinda-APT Pranoto International Airport
&{prod_airport_yogyakarta} =
...    keyword=jog
...    airport=JOG-Kota Yogyakarta-Adi Sutjipto International Airport
&{prod_airport_balikpapan} =
...                                         keyword=balik
...                                         airport=BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
&{prod_airport_semarang} =
...    keyword=semarang
...    airport=SRG-Kota Semarang-Achmad Yani International Airport

&{prod_arrival_date_valid_dict} =           date=20    month=02    year=2024
${prod_arrival_date_valid} =                ${prod_arrival_date_valid_dict}[date]${prod_arrival_date_valid_dict}[month]${prod_arrival_date_valid_dict}[year]
${prod_arrival_date_invalid} =              25012024

${prod_est_arrival_time_valid} =            0720
${prod_est_arrival_time_invalid} =          1500

${prod_flight_number_valid} =               A899U7G

&{prod_airline_valid} =                     keyword=air asia indonesia    airline=QZ - Air Asia Indonesia

${prod_date_format} =                       %d%m%Y
${prod_time_format} =                       %H%M
${prod_current_date} =                      Get Current Date    result_format=${prod_date_format}
${prod_current_time} =                      Get Current Date    result_format=${prod_time_format}

${prod_passenger_title} =                   Mr.
${prod_passenger_name} =                    Donny Setiawan
${prod_passenger_nationality} =             Indonesia
${prod_passenger_email_valid} =             donnyst@gmail.com
${prod_passenger_email_invalid} =           donnyst
${prod_passenger_phone_number} =            81443322111
${prod_passenger_notes} =                   I will carry 3 big suitcases

${prod_child_passenger_title} =             Child
${prod_child_passenger_name} =              Ardisyah
${prod_child_passenger_nationality} =       Indonesia

${prod_second_passenger_title} =            Mrs.
${prod_second_passenger_name} =             Mufida
${prod_second_passenger_nationality} =      Indonesia
${prod_second_passenger_email_valid} =      mufida@gmail.com
${prod_second_passenger_email_invalid} =    mufida@
${prod_second_passenger_phone_number} =     81223322111

${prod_infant_passenger_title} =            Infant
${prod_infant_passenger_name} =             Salma Salsabil
${prod_infant_passenger_birth_date}=        02102023
${prod_infant_passenger_nationality} =      Indonesia

${prod_booker_title} =                      Mr.
${prod_booker_name} =                       Adiwiyata
${prod_booker_nationality} =                Indonesia
${prod_booker_email_valid} =                adiwiyata@gmail.com
${prod_booker_email_invalid} =              adiwiyata@
${prod_booker_phone_number} =               81554466222

${prod_lounge_data} =                       Shapire Lounge Terminal 3
${prod_region_data} =                       Sudirman
${prod_car_type_data} =                     Toyota Alphard
