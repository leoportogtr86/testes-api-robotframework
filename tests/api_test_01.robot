*** Settings ***
Library    RequestsLibrary

*** Variables ***
${URL_BASE}    https://jsonplaceholder.typicode.com


*** Test Cases ***
Teste de requisição GET
    [Documentation]    Testa uma simples requisição GET com a RequestsLibrary
    ${response}=    GET    ${URL_BASE}/posts/1
    Status Should Be    200
    ${json}=    To Json    ${response.content}
    Log To Console    ${json}
    Should Be Equal As Strings    ${json['title']}    sunt aut facere repellat provident occaecati excepturi optio reprehenderit