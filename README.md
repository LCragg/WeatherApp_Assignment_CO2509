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

For the design of this App I created Wireframes and prototypes to show what ideas I had in mind for creating and designing the app. To create these I used a website known as Figma to create both of them. https://www.figma.com/file/IWcVxy9s3TX4Qhrl1qipQE/Weather-App-Wireframes?node-id=0%3A1 This is a link to the Wireframes that were created at the very start of the Apps design stage. These wireframes were created in order to show the idea that I had for the app, and mainly to show the layouts and the functions that the app would be able to perform. If you wish to view more information about the wireframes then please follow the link above. With the Wireframes that I have created, you can see that on the Home Page, the information provided and the way that it is displayed stays the same throughout all of the different designs and the actual development of the app. When creating the designs and wireframes for the app, I concentrated on implementing the "Don Normans 7 design Heuristics". The reason for this is to create a clear, concise and easy to use interface and product that can be easily picked up and used without needing any instructions or guidance. 

## Prototypes

When designing this app, I also made use of Figma to create some early stage prototypes for what I wanted the app to look like and how I wanted the app to behave. These prototypes included the data that I wanted to display, how it was displayed and provided an insight to all the pages and views that I wanted to implement. https://www.figma.com/file/bOyob3mlVc6DCfCk2eHg9L/Weather-App-Prototypes?node-id=0%3A1. Once again this link will show the prototypes that were created at the very start of this devleopment and provide a good insight into the changes that were made from the design stage to the actual development and implementation stage. If you wish to view more information about the Prototypes then please follow the link provided above. 

## Heuristics

There are 7 key heuristics that are commonly used by UI / UX designers and I will be discussing which of them I have included in all of these.
Heuristics used can be found here: https://usabilitygeek.com/usability-heuristics-ui-designers-know/

1: Consistency - In the app I have strived for a level of consistency that allows the user to feel like they are always on the same app and that it all feels familiar when they are going through the different pages and views that are available on the app. One way that I have followed this is by using the same font throughout the entire app. I have opted for Nunito Sans as I found this to be a very clear and easy to read font, which is the most important part of choosing a font for the user. I have also aimed for consistency by using the same theme on all the pages, besides the Home page, which uses its own style. 

2: Keep user in control - This heuristic is created so that the user feels like they always have control over the app and that they always feel comfortable and at ease whilst using the app. I have once again aimed to include this in a couple of ways. I have allowed the user to have control of the app by being able to change the theme view of the app, change the location that they wish to view information about and also change the temperature units that are displayed on the home page. These controls have been included in all of the views and designs that were created for the app. However, in the actual development of the app, I made the decision to change the location of the unit button as I decided that it would be easier for the user to access it if it was on the main page, instead of being on the settings page, which brings me on to heuristic 3.

3: Reduce Steps - The aim to make the app as simple to use as possible, by reducing the amount of steps that the users have to take in order to achieve something. This heuristic was the reason for a large change from the design to the development of the app. This change being the removal of the bottom navigation bar and the favourites page. These two design features were dropped from the actual development, as I felt that they were unnecessary features at this point in time and that they may end up confusing the user. Instead of having these, I have minimised the pages to just the location page which allows for the user to pick and choose a lcoation from the list provided.

4: Users Should know where they are -  This is another heuristic that concentrates on the clarity of the app and making life as easy as possible for the user when they are navigating and using the app. The main way that this has been achieved in the app is by having labels at the top of all the pages in the app and having labels for the data that is displayed for the weather. This is so that the user feels comfortable with the data they are being shown and they are comfortable in knowing what all the buttons and pages are. 

5: Avoiding Obtuse Language - Once again, clarity and conciseness. In the app all of the information that is provided is shown and labelled to be as simple to read as possible. For example, the Locations page is labelled Locations, all Locations are clearly labelled with their name and country, all data is shown as it is read and is clearly labelled with the basic of what it is.

6: Aesthetically pleasing design -  The design of the app should be aesthetically pleasing, and that is what I feel I have achieved with this design. Throughout all of the pages, the text and colour contrast has been made to be opposites which allows for the user to easily read and identify text and buttons on the app. The font has also been made so that it is a big size which is easy to read. The colour of the home page has also been made to recreate the style of a sunny day which can put the user in a good mood whilst they are using the app as sun can be seen as something that makes people smile and be happy. The colours blue also contrast very well with the white text which also allows for the easy readability.

7: Present Information with meaningful aids - In the app this has been achieved by providing labels for all the information that is displayed in the app so that the user gets the aid to know what they are looking at. This is also done by using the icons which are used for navigation. These Icons are typically used icons, which means that the user will recognise these and understand what it is they mean and they know what to expect when they click the button. 


# Development

## Packages

To create this App I had to make use of flutter packages that are available on the PUB DEV website. These packages allowed for the design and functionality of the app that has been created.

Google Fonts: Google fonts was the package that I used in order to get the Nunito Sans font that I discussed earlier. The reason that this package was used was because I had used the font throughout all of my designs and I wanted to add this to my App in order to stay in line with the early designs that were produced.

Link: https://pub.dev/packages/google_fonts

http: Http was one of the most important packages within this entire development. The HTTP package allowed me to add the API calls within the app, so this package is completely necessary for any kind of online app or app that intends to pull external data from a API. The package made it very easy to send the call to the OWM API and is very quick at pulling the data back for the user to view in the app.

Link: https://pub.dev/packages/http

Reference for learning to use http and API calls: https://www.youtube.com/watch?v=0er4rUjJdCk&t=509s

shared preferences: This package was implemented into the code in order to save and get data from the app and store it on the local device, so that there would be data and information persistence when the app was reloaded after being closed down. This was used in the Weather App for storing the name of the user they input within the settings page. This name stays the same when the user reloads the app after inputting the data.

Link: https://pub.dev/packages/shared_preferences

Reference for learning to use Shared Preferences: https://petercoding.com/flutter/2021/03/19/using-shared-preferences-in-flutter/

Provider: The provider package is mainly used to recall and resuse Inherited Widgets as it provides a wrapper around Inherited Widgets in order to make them easier to recall and reuse. This package also allows for the change Notifier and listener functions, which I have implemented into this app with the changing of theme modes and setting of theme modes.

Link: https://pub.dev/packages/provider

Reference for learning to use the Provider package: https://www.youtube.com/watch?v=LpCbUoahiww&t=224s
