*** Keywords ***
Exec JS
     [Arguments]  ${first}  ${second}  ${third}
     Execute Javascript  document.querySelector('${first}')
     ...    .shadowRoot.querySelector('${second}')
     ...    .shadowRoot.querySelector('${third}')
     ...    .click()