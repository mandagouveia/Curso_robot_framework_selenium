*** Settings ***
Resource        base.robot
Test Setup  Nova sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
 Verify the value while inform the number of the line
    go to       ${url}/tables
    table row should contain        id:actors   1   $ 10.000.000

 Discovers the line through the key text and validates the other values
    go to   ${url}/tables
    ${target}=      Get WebElement      xpath:.//tr[contains(., '@chadwickboseman')]
    Log     ${target.text}
    Log to console      ${target.text}
    Should contain      ${target.text}      $ 700.000
    Should contain      ${target.text}      Pantera Negra

