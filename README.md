Ever gone out to shop and brought a clothing that you already have at home?

# Introducing PRIMWEAR One app solution to many problems.
## PRIMWEAR
Features
Virtual Wardrobe: Get to know what is in your wardrobe, using our app.


Sustainabilty Hacks: Get sustainable by watching the content given in our app.

Community Exchange: Donate, sell, exchange, thrift your clothes with the PRIMWEAR community.

Style Inspiration: Ask Style AI for fashion trends and to create a different look from our collection of clothes.



Know the Weather: Know the sunlight intensity, cloud movements, rainy situations, temperature and wind movements of the place you are at. Current location of yours will be kept updated

Current Happenings: Explore the world wide news about climate changes, weather and natural disasters occurring.

Educate yourself: Get to know about how to be prepared for a natural disaster, learn about strategies for disaster response and learn the cause and effects of these with help of visual videos

Chat with AI: Clear all your doubts and questions with the AI Chatbot. It is capable of processing both text and image messages and will respond you will information, recommendations and knowledge about Disaster Management.

Contact during Emergency: Whenever there is a need of help from government and Disaster Management Bodies, have a call with them in no time. All the contact numbers of such bodies are provided.

Get Alerts: The app will provide push notifications and alerts whenever there is a disaster to be occurred in the place we stay. With help of this, we can be prepared and evacuate the area before we are in danger!

Special Prompts:
Use of Phone Authentication
Use of Geolocation API
Use of Push Notifications
Screenshots
App Screenshots
Image 1 Image 2 Image 3 Image 3
Image 4 Image 5 Image 6 Image 7
Tech Stack
Flutter: The app is built using Flutter, Google's UI toolkit, to ensure a beautiful and responsive user interface that works seamlessly across various Android and IOS devices.

Firebase: Employed Firebase for server-side operations, including: Authentication
Realtime Database
Cloud Storage

Geolocation API: Used the geolocation-based push notifications, ensuring users receive timely and location-specific alerts.

Phone Authentication: Firebase's phone authentication API is used for verifying users through their phone numbers.

Gemini AI Chatbot: Used the Gemini API to make users feel comfort by clearing their doubts and questions using it.

Push Notification: This feature was enabled to give alerts to users based on their location and climate.

Installation
Prerequisites
Before you begin, ensure you have met the following requirements:

Flutter installed on your machine. You can download it from Flutter's official website.
Dart SDK installed as part of Flutter.
Firebase account and project setup. Follow the steps on Firebase's official website.
Android Studio or VS Code installed with Flutter and Dart plugins.
Step 1: Clone the Repository
git clone https://github.com/yourusername/shield.git
Step 2: Install Dependencies
Run the following command to install all the necessary dependencies:

flutter pub get
Step 3: Configure Firebase
Add Firebase to Your Flutter App:

Follow the instructions on Firebase's official guide to connect your Flutter app to Firebase.
Download the google-services.json file for Android and GoogleService-Info.plist for iOS and place them in the appropriate directories (android/app and ios/Runner respectively).
Enable Firebase Services:

Go to your Firebase console and enable the necessary services (e.g., Firestore, Firebase Authentication, Firebase Messaging, etc.).
Step 4: Run the App
You can now run the app on an emulator or a physical device:

flutter run
Deployment
Android
Build the APK:

Run the following command to build the APK:
flutter build apk --release
Sign the APK:

Follow the official guide to sign the APK.
Upload to P…

