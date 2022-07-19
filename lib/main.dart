import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notifications/app/notification.dart';
import 'package:notifications/app/services/notification_handler.dart';
import 'package:notifications/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(
      NotificationHandler.firebaseMessagingBackgroundHandler);

  await NotificationHandler().init();
  runApp(const NotificationApp());
}
