*** Settings ***
Library     DateTime
Resource    ../Common.robot


*** Variables ***
&{airport_surabaya} =                   keyword=Juanda    airport=SUB-Kota Surabaya-Juanda International Airport
&{airport_singapore} =                  keyword=Singapore    airport=SIN-SINGAPORE-CHANGI INTL ARPT -Singapore
&{airport_tangerang} =                  keyword=cgk    airport=CGK-Kota Tangerang-Soekarno Hatta International Airport
&{airport_samarinda} =
...                                     keyword=samarinda
...                                     airport=AAP-Kota Samarinda-APT Pranoto International Airport
&{airport_yogyakarta} =                 keyword=jog    airport=JOG-Kota Yogyakarta-Adi Sutjipto International Airport
&{airport_balikpapan} =
...                                     keyword=balik
...                                     airport=BPN-Kota Balikpapan-Sultan Aji Muhammad Sulaiman Sepinggan International Airport
&{airport_semarang} =                   keyword=semarang    airport=SRG-Kota Semarang-Achmad Yani International Airport

&{arrival_date_valid_dict} =            date=20    month=02    year=2024
${arrival_date_valid} =                 ${arrival_date_valid_dict}[date]${arrival_date_valid_dict}[month]${arrival_date_valid_dict}[year]
${arrival_date_invalid} =               25012024

${est_arrival_time_valid} =             0720
${est_arrival_time_invalid} =           1500

${flight_number_valid} =                A899U7G

&{airline_valid} =                      keyword=lion    airline=JT - Lion Air

${date_format} =                        %d%m%Y
${time_format} =                        %H%M
${current_date} =                       Get Current Date    result_format=${date_format}
${current_time} =                       Get Current Date    result_format=${time_format}

${passenger_title} =                    Mr.
${passenger_name} =                     Donny Setiawan
${passenger_nationality} =              Indonesia
${passenger_email_valid} =              donnyst@gmail.com
${passenger_email_invalid} =            donnyst
${passenger_phone_number} =             81443322111
${passenger_notes} =                    I will carry 3 big suitcases

${child_passenger_title} =              Child
${child_passenger_name} =               Ardisyah
${child_passenger_nationality} =        Indonesia

${second_passenger_title} =             Mrs.
${second_passenger_name} =              Mufida
${second_passenger_nationality} =       Indonesia
${second_passenger_email_valid} =       mufida@gmail.com
${second_passenger_email_invalid} =     mufida@
${second_passenger_phone_number} =      81223322111

${infant_passenger_title} =             Infant
${infant_passenger_name} =              Salma Salsabil
${infant_passenger_birth_date}=         02102023
${infant_passenger_nationality} =       Indonesia

${booker_title} =                       Mr.
${booker_name} =                        Adiwiyata
${booker_nationality} =                 Indonesia
${booker_email_valid} =                 adiwiyata@gmail.com
${booker_email_invalid} =               adiwiyata@
${booker_phone_number} =                81554466222

${lounge_data} =                        Shapire Lounge Terminal 3
${region_data} =                        Sudirman
${car_type_data} =                      Toyota Alphard
