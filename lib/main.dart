import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
        colorScheme: ColorScheme.fromSeed(
          seedColor: CustomColors.customSwatchColor,
        ),
        useMaterial3: true,
        fontFamily: "Nunito",
        appBarTheme:  AppBarTheme(
          toolbarTextStyle: const TextTheme(
            titleMedium: TextStyle(
              fontFamily: "Nunito",
            ),
          ).bodyMedium,
          titleTextStyle: const TextTheme(
            titleMedium: TextStyle(
              fontFamily: "Nunito",
            ),
          ).titleLarge,
        ),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("pt", "BR"),
      ],
      home: const SignInScreen(),
    );
  }
}
