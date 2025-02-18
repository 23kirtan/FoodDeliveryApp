import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery_app/firebase_options.dart';
import 'package:fooddelivery_app/models/restraurant.dart';
import 'package:fooddelivery_app/servisics/auth/auth_gate.dart';
import 'package:fooddelivery_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        // Theme Provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // Restaurant Provider
        ChangeNotifierProvider(create: (context) => Restraurant()), // Fixed typo
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>(); // Recommended way

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(), // Fixed class name typo
      theme: themeProvider.themeData,
      themeMode: ThemeMode.system, // Optional: Supports system theme switching
    );
  }
}
