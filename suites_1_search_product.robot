*** Settings ***
Library         	SeleniumLibrary
Suite teardown    	Close all browsers



*** Variables ***
${url}				https://www.tokopedia.com
${browser}        	chrome
${keyword}			bakso



*** Test Cases ***
Search using keyword
	Go to tokopedia page
	Input keyword
	Press submit button
	Verify search result
	


*** Keywords ***
Go to tokopedia page
	Open Browser 						${url}							${browser}

Input keyword
	Wait Until Element Is Visible		id=search-keyword
	Input Text							id=search-keyword				${keyword}

Press submit button
	Click Element						xpath=//*[@id="navbar-search"]/div/div/button

Verify search result
	Wait Until Element Is Visible		xpath=/html/body/div[1]/div[6]/div/div/div/div/div/div[1]/div[2]/div/div[3]/div[1]
	Element Should Contain			 	xpath=/html/body/div[1]/div[6]/div/div/div/div/div/div[1]/div[2]/div/div[3]/div[1]				${keyword}