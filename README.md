# PrimWear
Ever gone out to shop and brought a clothing that you already have at home? Introducing PrimWeat One app solution to many problems.

## Features
Virtual Wardrobe: Get to know what is in your wardrobe, using our app.  
Sustainabilty Hacks: Get sustainable by watching the content given in our app.  
Community Exchange: Donate, sell, exchange, thrift your clothes with the PRIMWEAR community.  
Style Inspiration: Ask Style AI for fashion trends and to create a different look from our collection of clothes.  

![image](https://github.com/user-attachments/assets/3c0431fe-676b-42a6-ae64-6e6ae1c61861)
![image](https://github.com/user-attachments/assets/91d03a1d-923f-4155-9d07-9d459c4e53da)
![image](https://github.com/user-attachments/assets/9e3e4997-2537-4605-8f03-cd92365d19d8)
![image](https://github.com/user-attachments/assets/3c8250b6-1b10-4053-8125-008f4a4c2c50)
![image](https://github.com/user-attachments/assets/2fb8b83f-5632-4dc5-9ed6-a3a75799a7f4)
![image](https://github.com/user-attachments/assets/57f0f491-cb9b-4b01-a770-1ad9bd610a72)
![image](https://github.com/user-attachments/assets/b3778e7b-8b39-415f-859a-1c2699065f48)

## Tech Stack
Flutter: The app is built using Flutter, Google's UI toolkit.  
Firebase: Employed Firebase for server-side operations.
Style AI API: Used a chatbot to provide fashion and styling suggestions.

## Installation
### Prerequisites
Before you begin, ensure you have met the following requirements:

Flutter installed on your machine. You can download it from Flutter's official website.  
Dart SDK installed as part of Flutter.  
Firebase account and project setup. Follow the steps on Firebase's official website.  
Android Studio or VS Code installed with Flutter and Dart plugins.  


**Step 1:** Clone the Repository  
git clone https://github.com/yourusername/PrimWear.git  

**Step 2:** Install Dependencies  
Run the following command to install all the necessary dependencies:
flutter pub get  

**Step 3:** Configure Firebase  
Add Firebase to Your Flutter App:  
Follow the instructions on Firebase's official guide to connect your Flutter app to Firebase.
Download the google-services.json file for Android and GoogleService-Info.plist for iOS and place them in the appropriate directories (android/app and ios/Runner respectively).
Enable Firebase Services:  
Go to your Firebase console and enable the necessary services (e.g., Firestore, Firebase Authentication, Firebase Messaging, etc.).  

**Step 4:** Run the App  
You can now run the app on an emulator or a physical device:
flutter run  

#### Deployment  
##### Android  
Build the APK:  
Run the following command to build the APK:  
flutter build apk --release  
Sign the APK:  
Follow the official guide to sign the APK.
Upload to Play Store:

Follow the instructions on the Google Play Console to upload your APK
#### iOS  
Build the iOS App:  
Run the following command to build the iOS app:  
 flutter build ios --release  
Code Signing:  
Ensure that you have an Apple Developer account and follow the official guide for code signing.  
Upload to App Store:  
Use Xcode or Application Loader to upload your app to the App Store.  
