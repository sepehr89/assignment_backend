# assignment_backend
This is the back-end part of the assignment we application for passing the code challenge of GeoSensorWeb lab. The project is uploaded in two repositoires. This on covers back-end development of the client-server web application. 
## Overview
The purpose of this project is to maximize the amount of signal GeosensorWeb lab receive about each candidate when they complete our code test. The perfect code test maximizes signal while minimizing time. The lab value feedback. If you love, hate, or otherwise wish to help us improve our signal project please open an issue. 
## Subject
The Government of Canada wishes to provide the Canada Food Guide as an online service to improve the health of Canadians. To test the idea an MVP was outlined by the product owner. They are looking to adopt modern cloud-based methodologies to deploy a scalable healthy eating API.
The roadmap includes adding preference features and automatic weekly shopping lists with options to set up healthy grocery delivery via Amazon Prime. This roadmap is out of scope for this project.
User daily menu
The user want to see an optimal daily menu
so that I can improve my health.
## Data 
The data is provided by for csv files. All of them exists in the "data" folder of the repository. 
- foodgroup-en_ONPP: includes food group data.
- foodgroup-en_ONPP: includes foods data.
- serving_per_days_ONPP: data abuot how many serves every food group should be consumed.
- fg_directional_statement_en_ONPP:intstruction of how every food should be used.
## Installation
The back-end part is developed based by node js framework. Server side programming gets benifits of javascript scripting and http native scripting. For managing relational database MySQL is employed. The node.js server module is employed as the http server for handling requests and responses. Therefore as prerequirements both nodejs and npm are needed. The following steps may guide you to activate and run the server.
- Installing Chocolatey – The Chocolatey website (https://chocolatey.org/) has very clear instructions on how this framework needs to be installed.
- The next step is to install Node.js to your local machine using the Chocolatey, package manager. This can be done by running the below command in the command prompt.

  **cinst nodejs install**
  
- Run the **npm install server** command
- Run the **npm install mysql** command

To create the mysql from csv database "createDB.sql" from "data" folder could be used.
After installing all requiremnts, the main program should be run by the following command from the node.js folder:
- **node recommendedFolder/app.js**
The default address for the nodejs server is "localhost:3000/recommendedFolder".
