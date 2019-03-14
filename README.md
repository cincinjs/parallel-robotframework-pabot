# Parallel execution Robot Framework using Pabot

### Installation
- Install phyton
	Download and install it from here ```https://www.python.org/downloads/```
- Install Robot Framework
	```$ pip install robotframework```
- Install Selenium2Library
	```$ pip install --upgrade robotframework-selenium2library```
- Install Pabot
	```$ pip install robotframework-pabot```

### How to run this code : 
`$ pabot --processes 3 *.robot`

Notes :
- `--processes [NUMBER OF PROCESSES]`
How many parallel executors to use (default max of 2 and cpu count)


### Result :
![result](https://user-images.githubusercontent.com/3975130/54346195-4689cf80-4677-11e9-9b1a-4c8bc32ca51c.png)



Reference :
- https://github.com/mkorpela/pabot
- https://github.com/robotframework/robotframework
- http://robotframework.org/Selenium2Library/Selenium2Library.html
