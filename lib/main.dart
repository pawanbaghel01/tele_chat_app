
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tele_chat_app/firebase_options.dart';
import 'package:tele_chat_app/screens/splash_Screen.dart';
import 'package:tele_chat_app/services/notification_services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationServices.initialize();
    // Initialize Firebase App Check
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: 'recaptcha-v3-site-key', // For web, provide your reCAPTCHA site key
  //   androidProvider: AndroidProvider.debug, // Use AndroidProvider.playIntegrity for production
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true  ,
      ),
        home:const SplashScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}
