*** Keywords ***
Search Random Breed
    [Documentation]  Verify that a successful message is returned when a user searches for random breeds
    ${results}=  common.Get Url   ${API_URL}   breeds/image/random  ${BEARER_TOKEN}
    [return]  ${results}
    Should Be True      "success" in """${results}"""

Get List Of Breeds
    [Documentation]  Verify that bulldog is on the list of all breeds
    ${results}=  common.Get Url   ${API_URL}   breeds/list/all  ${BEARER_TOKEN}
    [return]  ${results}
    Should Be True      "bulldog" in """${results}"""

Get List Of Sub Breeds
    [Documentation]    Retrieve all sub-breeds for bulldogs
    [Arguments]  ${breed}
    ${results}=  common.Get Url   ${API_URL}   breed/${breed}/list  ${BEARER_TOKEN}
    [return]  ${results}

Get Images For a Breed
    [Documentation]    Retrieve all images for bulldogs
    [Arguments]  ${breed}
    ${results}=  common.Get Url   ${API_URL}   breed/${breed}/images  ${BEARER_TOKEN}
    [return]  ${results}
