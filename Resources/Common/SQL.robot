*** Settings ***

Library     DatabaseLibrary
Library     pymysql

*** Variables ***
${db_name}      TestDB
${db_user}      root
${db_pass}      mysql
${db_host}      localhost
${db_port}      3306

*** Keywords ***
Read records from table
    [Arguments]    ${table}
    Connect To Database Using Custom Params    pymysql    database='${db_name}', user='${db_user}', password='${db_pass}', host='${db_host}', port=${db_port}
    ${all_items}    Query    select * from ${table} limit 1;
    Disconnect From Database
    [Return]    ${all_items}

Select a Attribute CRM User
    ${user}  Read records from table    users
    [Return]    ${user}