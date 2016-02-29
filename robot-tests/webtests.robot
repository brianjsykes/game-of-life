*** Settings ***
Documentation     Basic Selenium test demo
Library     Selenium2Library

*** Variables ***
#${URL}    http://hostip:9090
${BROWSER}    firefox

*** Test Cases ***
Go to site and validate page text
    [Documentation]    A note about this test case...
    open browser    ${URL}      ${BROWSER}
    page should contain    Game of Life
    capture page screenshot
    close browser