Week 7 - Life is a Web Service

During this week we used the following APIs in our website:
-Google Maps
-Twilio
-Slack
-DropBox
-SendGrid
-IBM Watson
-ZenDesk

All the accounts on those website have been created with the following user:
Username: rocketelevator@hotmail.com
PW: Codeboxx1!

Here's how to test all the APIs we used:
Google Maps: 
When you click on the Google Maps tab in the admin section, a map with markers for each address and informations about the building for this address will be generated. NOTE-- This can take a long time to load and you may be prompted with an error if it takes too long, just refresh the page.

Twilio:
When the status of an elevator is set to "Intervention" from the admin section, the technical contact assigned to the building associated with the elevator will receive an SMS.

Slack:
While in the admin dashboard, click on "Elevators" on the lefthand panel. When the status of an elevator is changed, it will send a notification in the Rocket Elevators channel on Slack.

Dropbox:
The Dropbox API takes files that are uploaded via the contact form and when a customer is created or edited, a command will be executed to verify if the emails match and if it does, the previously uploaded attachment will be sent to Dropbox for safekeeping.

Sendgrid:
After customers fill out the contact form, the Sendgrid API will reach out to them via email to greet them and assure them that a representative will contact them shortly.

IBM Watson:
When you click on the Watson tab in the admin section, a single button will appear which will greet the current user and give a brief summary of the elements contained in the database.
NOTE-- It seems that the script for the button takes some time to execute the command and you may need to reload the page or the tab to have the message update when a modification is done.

Zendesk:
When a customer sends a contact form or a quote, the Zendesk API is triggered and a new ticket is created on the behalf of the customer. This ticket contains the customer's contact information and provides an easy way for the Rocket Elevators support team to respond to customers and follow up on requests.


Week 8 - Consolidation

Employees who are logged in can now fill out a form to request an intervention on a customer's building by clicking on the "Interventions" tab located in the navigation bar. This form will send the datas to the server once submitted and will create a ticket on Zendesk.

Zendesk:
A new account has been created, contact and quote form will still create tickets when submitted. Interventions requests will create a "Problem" type ticket when submitted and it can be accessible with these informations:
Domain => schooltest.zendesk.com
password => Codeboxx1!
email: dontcanceltrial@hotmail.com

RESTAPI:
Three new endpoints have been added to the REST API from last week. They can be accessible on this repo => https://github.com/Alexberg69/Rocket_Elevators_REST_API.git
Ask me access if you need it.

Here's the postman collection => https://www.getpostman.com/collections/bd56bd3e3e9dfd45c07b

The new end points are:

10-Returns all fields of all intervention Request records that do not have a start date and are in "Pending" status.
https://rocketelevatorrestapi.azurewebsites.net/api/interventions

11-Change the status of the intervention request to "InProgress" and add a start date and time (Timestamp).
https://rocketelevatorrestapi.azurewebsites.net/api/interventions/1/InProgress

12-Change the status of the request for action to "Completed" and add an end date and time (Timestamp).
https://rocketelevatorrestapi.azurewebsites.net/api/interventions/1/Completed

Week 10 Quality and TDD / Security

This week, we created a module called ElevatorMedia using the test-driven-development method. It is located in 'lib' folder and the tests are in the 'spec' folder. I created a view for the render of the module which can only be accessed via the url by adding '/trivia'.
I also tried making the same test using javascript and jest which are located on this repo: https://github.com/Alexberg69/TDD-JEST.git

For the Security part, I created a google Docs and here is the url to read it: https://docs.google.com/document/d/1Yu-dgpl7-ZYzESD9C3rJb7ZkmgjShDqqruxuC_mNkwU/edit?usp=sharing

Week 13 Machine Learning

This week, we implemented the code to be able to create a profile with an audio on the Azure Speech Recognition API and be able to verify if the speaker in this profile is present in another audio.

All the audio used are present in the audio folder and the form is in the machineLearning page located in app/view/website