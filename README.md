<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# edgy_button - Pin Edged Button in Flutter

A new and unique style of button that will take your Flutter Project to a next level

## Demo

![screenshot](https://user-images.githubusercontent.com/72114434/190898191-784904a5-667e-4467-975b-fb60cb2fe1a7.png)

## Getting started

   - In pubspec.yaml file, add the following dependency:

        ```
          edgy_button: ^0.0.1
        ```
   - Import the package into your project:
        ```
          import 'package:edgy_button/edgy_button.dart';
        ```
   - You can now use the `EdgyButton()` anywhere in the project
        ```
          // For normal Button
          EdgyButton(
                 buttonHeight: 50,
                 buttonWidth: 200,
                 label: 'BUTTON',
                 labelStyle: const TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 24,
                   color: Colors.white,
                 ),
                 buttonColor: Colors.redAccent,
                 onPressed: (){
                   log('Clicked');
                 },
             ),
             
           // For bordered Button
           EdgyButton(
               buttonHeight: 50,
               buttonWidth: 200,
               label: 'BUTTON',
               labelStyle: const TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 24,
                 color: Colors.green,
               ),
               border: Border.all(
                 color: Colors.green,
                 width: 2,
               ),
               buttonColor: Colors.transparent,
               onPressed: (){
                 log('Clicked Pro');
               },
             ),
        ```

## Features

| Property                | Description              |
|-------------------------|--------------------------|
| buttonHeight (required) | Height of the Button     |
| buttonWidth  (required) | Width of the Button      |
| label        (required) | Text inside the Button   |
| labelstyle              | For styling the text     |
| buttonColor  (required) | Color of the Button      |
| onPressed    (required) | onPressed Function       |
| border                  | Add border to the Button |
