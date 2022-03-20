# flutterweatherui
Luke Cragg - G20854135

# App Description

This app has been created for CO2509 Coursework / Assignment 1. This is a Weather app which is has been designed and coded using Dart and Flutter. The App works 
through a live API, provided by https://openweathermap.org/ . OpenWeatherMap provides a Live API service which is completely free and open source and from the APIs
that I had searched through, I found this service to be the most accurate and the friendliest to implement. 

The program works from just one singular API call, but is able to get the weather from 30 different locations by modifying the API call for each of the locations.
This means that the app is able to get the live weather from any of the locations that are listed on the Locations.dart file. This Weather App has also been developed in a way that allows for the user to modify the data that they recieve from the API call. This is done by allowing the user to change the units that the data is displayed in. In the App the default unit is set the Metric. However, on the main weather page the user is able to change that to the Imperial unit and view the temperature in Fahrenheit. 

![2022-03-20 09-41-28_Moment](https://user-images.githubusercontent.com/91945195/159156717-e697cc57-50b1-46e6-b28c-090f848dc3cf.jpg)
![2022-03-20 09-41-28_Moment(2)](https://user-images.githubusercontent.com/91945195/159156716-864f50c7-dae3-4a57-a25d-cb6bfd404eab.jpg)

This app also allows for the user to change the name that greets them when they go into the settings page. They are able to set this on the first time of running the app and through the use of the shared preferences package (https://pub.dev/packages/shared_preferences). The app will store the name that has been set, on the local device.

Aswell as the ability to change the name on the settings page, the App also allows for the change of app theme when scrolling through locations page or whilst using the settings page. This theme change does persist across the entire app, besides the Main Weather Page which has a set theme that does not change. 

![2022-03-20 09-49-32_Moment(2)](https://user-images.githubusercontent.com/91945195/159157066-95e7c7dc-2aa6-4be6-a2c2-ef49592f3ab5.jpg)
![2022-03-20 09-49-32_Moment (2)](https://user-images.githubusercontent.com/91945195/159157064-714fd703-2585-481c-b78d-c7afeb6cc660.jpg)

# Design
## Wireframes

For the design of this App I created Wireframes and prototypes to show what ideas I had in mind for creating and designing the app. To create these I used a website known as Figma to create both of them. https://www.figma.com/file/IWcVxy9s3TX4Qhrl1qipQE/Weather-App-Wireframes?node-id=0%3A1 This is a link to the Wireframes that were created at the very start of the Apps design stage. These wireframes were created in order to show the idea that I had for the app, and mainly to show the layouts and the functions that the app would be able to perform. If you wish to view more information about the wireframes then please follow the link above. With the Wireframes that I have created, you can see that on the Home Page, the information provided and the way that it is displayed stays the same throughout all of the different designs and the actual development of the app

## Prototypes

When designing this app, I also made use of Figma to create some early stage prototypes for what I wanted the app to look like and how I wanted the app to behave. These prototypes included the data that I wanted to display, how it was displayed and provided an insight to all the pages and views that I wanted to implement. https://www.figma.com/file/bOyob3mlVc6DCfCk2eHg9L/Weather-App-Prototypes?node-id=0%3A1. Once again this link will show the prototypes that were created at the very start of this devleopment and provide a good insight into the changes that were made from the design stage to the actual development and implementation stage. If you wish to view more information about the Prototypes then please follow the link provided above. 
