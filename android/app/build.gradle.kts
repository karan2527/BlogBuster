plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

dependencies {
  // Import the Firebase BoM
  implementation(platform("com.google.firebase:firebase-bom:33.9.0"))

  // Analytics
  implementation("com.google.firebase:firebase-analytics")
  
  // Authentication
  implementation("com.google.firebase:firebase-auth")
  
  // Cloud Firestore
  implementation("com.google.firebase:firebase-firestore")
  
  // Realtime Database
  implementation("com.google.firebase:firebase-database")
  
  // Cloud Storage
  implementation("com.google.firebase:firebase-storage")
  
  // Cloud Messaging (FCM)
  implementation("com.google.firebase:firebase-messaging")
  
  // Crashlytics
  implementation("com.google.firebase:firebase-crashlytics")
  
  // Remote Config
  implementation("com.google.firebase:firebase-config")

  // Add the dependencies for any other desired Firebase products
  // https://firebase.google.com/docs/android/setup#available-libraries
}

android {
    namespace = "com.example.blogbuster"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.blogbuster"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}