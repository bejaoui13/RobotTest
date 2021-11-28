*** Setting ***
Library           SeleniumLibrary


*** Test Cases ***
MyFirstTest
    Log    Heloo world

#FirstSelniumTest
   # Open Browser  https://www.google.fr/     chrome
  #  input text    name=q                      automation 
  #  Press Keys    name=q                      ENTER
     #Click Button  name=q                   ENTER
  #  close browser

SimpleLoginTest
    
     Open Browser     ${URL}                 chrome
     Set Browser Implicit Wait               1 
     input text     name=txtUsername        ${LIST}[0]
          Set Browser Implicit Wait               0 

     input text     name=txtPassword        ${LOGINDATA}[password]
     click button   name=Submit
     click element  id=welcome       
     click element  link=Logout
     log  test completed
     log  this test excecuted by %{username} and SO %{os}

*** Variables ***
${URL}               https://opensource-demo.orangehrmlive.com/
@{LIST}              Admin    admin123
&{LOGINDATA}         password=admin123