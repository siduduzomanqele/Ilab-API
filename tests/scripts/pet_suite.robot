*** Settings ***
Library             JsonValidator
Library             SeleniumLibrary
Library             OperatingSystem
Library             RequestsLibrary
Library             FakerLibrary
Library             String
Library             JSONLibrary
Library             Collections
Library             DatabaseLibrary
Library             ./pet.py
Resource                  ../resources/common.robot
Resource                  ../resources/petstore.robot
Resource                  ../resources/environment.robot

*** Test Case ***
Retrieve All Pets
    [Tags]  pets
    ${results}=  get all pets  available
    [return]  ${results}
    Element should exist    ${results}    .name:contains("doggie")
    Element should exist    ${results}    .category:contains("12")

New Pets
    [Tags]  newPet
    Add New Pet  12  available