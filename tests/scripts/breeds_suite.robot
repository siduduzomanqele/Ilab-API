*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             RequestsLibrary
Library             FakerLibrary
Library             String
Library             JSONLibrary
Library             Collections
Library             DatabaseLibrary
Resource                  ../resources/common.robot
Resource                  ../resources/breeds.robot
Resource                  ../resources/environment.robot

*** Test Case ***
Verify Successful Message 
    [Tags]  Breeds
    breeds.Search Random Breed

Verify Bulldog Exists
    [Tags]  Breeds
    breeds.Get List Of Breeds

Retrieve Bulldogs Sub-breeds
    [Tags]  Breeds
    breeds.Get List Of Sub Breeds  bulldog


Retrieve Bulldogs Images
    [Tags]  Breeds
    breeds.Get Images For a Breed  bulldog


