*** Keywords ***
Get All Pets by status 
    [Arguments]  ${status}
    [Documentation]  . Retrieve all available pets and confirm that the name “doggie” with category id "12" is on the list
    ${results}=  common.Get Pet Url   ${PET_API_URL}pet/findByStatus?status=${status}


Add New Pet
    [Arguments]  ${id}  ${status}
    ${name}=  FakerLibrary.first_name
    ${data}=  Catenate  {
    ...        "id":  0,
    ...        "category": {
    ...          "id": ${id},
    ...          "name": "${name}"
    ...        },
    ...        "name": "${name}",
    ...        "photoUrls": [
    ...          "string"
    ...        ],
    ...        "tags": [
    ...          {
    ...            "id":  ${id},
    ...            "name": "${name}"
    ...          }
    ...        ],
    ...        "status": "${status}"
    ...   }
    ${results}=  common.Post Url  ${PET_API_URL}  pet  ${data}  ${BEARER_TOKEN}
    ${get_auto_id}=  Get Value From Json  ${results}  $..id
    ${auto_id}=  Set Variable  ${get_auto_id[0]}  
    [return]  ${auto_id}
    ${get_pet}=  get_pet  ${auto_id}
    ${get_pet_results}=  Get Value From Json  ${get_pet}  $..id
    ${pet_result_id}=  Set Variable  ${get_pet_results[0]}
    Should Be Equal   ${pet_result_id}  ${auto_id}  
