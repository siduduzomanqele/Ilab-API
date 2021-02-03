*** Settings ***
Documentation  
...  https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html
...  https://github.com/robotframework-thailand/robotframework-jsonlibrary
...  pip install --upgrade robotframework-httplibrary
...  pip install -U robotframework-jsonlibrary
...  pip install -U robotframework-requests
*** Keywords ***
Post Url
    [Arguments]    ${url}  ${path}  ${data}  ${token}  ${statuscode}=200
    Create Session  postsession  ${url}
    ${headers}=  Create Dictionary  Content-Type=application/json  Authorization=Bearer ${token}  Keep-Alive=Keep-Alive: timeout=15, max=30000
    ${resp}=  Post Request  postsession  ${path}  data=${data}  headers=${headers}
    Log  ${resp.text}
    Should Be Equal As Strings  ${resp.status_code}  ${statuscode} 
    [return]  ${resp.json()}

Get Url
    [Arguments]  ${url}  ${path}  ${token}
    Create Session  getsession  ${url}${path}  verify=true
    ${headers}=  Create Dictionary  Content-Type=application/json  Authorization=Bearer ${token}  Keep-Alive=Keep-Alive: timeout=15, max=30000
    ${resp}=  Get Request  getsession  /  headers=${headers}
    Log  ${resp.text}
    Should Be Equal As Strings  ${resp.status_code}  200
    [return]  ${resp.json()}

Get Pet Url
    [Arguments]  ${url}
    Create Session  getpet  ${url}  verify=true
    ${headers}=  Create Dictionary  Content-Type=application/json    Keep-Alive=Keep-Alive: timeout=15, max=30000
    log  ${url}
    ${resp}=  Get Request  getpet   ${url}   headers=${headers}
    Log  ${resp.text}
    RequestsLibrary.To Json  ${resp.content}
    Should Be Equal As Strings  ${resp.status_code}  200
    [return]  ${resp.json()}

Put Url
    [Arguments]  ${url}  ${data}  ${path}  ${token}  ${statuscode}=200
    Create Session  postsession  ${url}
    ${headers}=  Create Dictionary  Content-Type=application/json  Authorization=Bearer ${token}  Keep-Alive=Keep-Alive: timeout=15, max=30000
    ${resp}=  Put Request  postsession  ${path}  data=${data}  headers=${headers}
    Log  ${resp.text}
    Should Be Equal As Strings  ${resp.status_code}  ${statuscode} 
    [return]  ${resp.json()}

Delete Url
    [Arguments]  ${url}  ${path}  ${token}  ${statuscode}=200
    Create Session  getsession  ${url}
    ${headers}=  Create Dictionary  Content-Type=application/json  Authorization=Bearer ${token}  Keep-Alive=Keep-Alive: timeout=15, max=300000
    ${resp}=  Delete Request  postsession  ${path}  headers=${headers}
    Log  ${resp.text}
    Should Be Equal As Strings  ${resp.status_code}  ${statuscode} 
    [return]  ${resp.json()}