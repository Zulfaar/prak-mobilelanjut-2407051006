import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'responsive_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Profile',

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,

      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Stack(
              children: [
                const ResponsiveProfile(),

                Positioned(
                  top: 10,
                  right: 10,
                  child: SafeArea(
                    child: Switch(
                      value: themeMode == ThemeMode.dark,
                      onChanged: toggleTheme,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}