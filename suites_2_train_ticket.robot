*** Settings ***
Library         	SeleniumLibrary
Suite teardown    	Close all browsers



*** Variables ***
${url}						https://tiket.tokopedia.com
${browser}        			chrome

${destination_from}			Gambir
${destination_to}			Yogyakarta
${departure_date}			01-06-2019



*** Test Cases ***
Search using keyword
	Go to tokopedia tiket page
	Input first station
	Input second station
	Input departure date
	Press search button
	Verify search result


*** Keywords ***
Go to tokopedia tiket page
	Open Browser 						${url}											${browser}

Input first station
	Click Element 						id=destination-from
	Input Text							id=destination-from								${destination_from}
	Sleep 								1s
	Click Element						xpath=/html/body/ul[3]/li/div[1]/p/span

Input second station
	Click Element 						id=destination-to
	Input Text							id=destination-to								${destination_to}
	Sleep 								1s
	Click Element						xpath=/html/body/ul[4]/li[7]/div[1]/p

Input departure date
	Click Element 						id=from	
	Clear Element Text					id=from
	Input Text							id=from											${departure_date}
	#Sleep 								1s
	#Click Element						xpath=/html/body/div[4]/div[4]/button[1]

Press search button
	Click Element						xpath=/html/body/div[2]/div[1]/div/div/div[2]/div/form/div[2]/div[4]/button

Verify search result					
	Element Should Contain				xpath=/html/body/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]				${destination_from}
	Element Should Contain				xpath=/html/body/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]				${destination_to}