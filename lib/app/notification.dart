import 'package:flutter/material.dart';
import 'package:notifications/app/pages/home.dart';
import 'package:notifications/app/pages/message.dart';

class NotificationApp extends StatelessWidget {
  const NotificationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "notification",
      routes: {
        '/': (context) => const HomePage(),
        '/message': (context) => const MessagePage(),
      },
    );
  }
}
