*** Setting ***
Library    Selenium2Library

*** Variables ***
${url}           http://10.251.4.67:8000/pgrc/user/login

*** Test Cases ***
Open Browser
        Open Browser        ${url}        chrome
        Maximize Browser Window

Sign In
        Input Text                  id:username                    P987987
        Input Text                  xpath:/html/body/div[2]/div/div[2]/form/div[4]/input                    123456
        Click element               xpath:/html/body/div[2]/div/div[2]/form/button

Menu KPI Kolegial
        #Scroll Element Into View    [@id="sticky-sidebar"]/div/div/div/div[3]/a
        Click element               xpath:/html/body/div[3]/div/div[1]/div/div/div/div[3]/a/div
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div[1]/a
        #Click element               id:title
        Input Text                  id:title            testingsitpres1
        #Click element               id:menu_link_name
        Input Text                  id:menu_link_name        https://datastudio.google.com/u/0/reporting/d5afd648-7a2f-4bda-9371-9a781a237f56/page/pENoC
        #Click element               xpath://*[@id="redirect_link"]
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div/div/form/div[3]/select/option[2]
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div/div/form/button

Menu Pelaporan Gratifikasi
        Click element               xpath:/html/body/div[3]/div/div[1]/div/div/div/a[3]/div
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div[1]/a
        Input Text                  id:title            testingsitpres1
        Input Text                  id:menu_link_name        http://10.251.4.67:8000/pgrc/admin/link-embed/add?id=NA==
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div/div/form/div[3]/select/option[2]
        Click element               xpath:/html/body/div[2]/div/div[2]/div/div/div/form/button