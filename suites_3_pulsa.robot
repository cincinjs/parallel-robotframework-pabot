*** Settings ***
Library         	SeleniumLibrary
Suite teardown    	Close all browsers



*** Variables ***
${url}				https://www.tokopedia.com/pulsa/
${browser}        	chrome

${expected_page}	Beli Pulsa


*** Test Cases ***
Search using keyword
	Go to tokopedia pulsa page
	Verify page



*** Keywords ***
Go to tokopedia pulsa page
	Open Browser 						${url}							${browser}

Verify page
	Element Should Contain				id=category-title				${expected_page}