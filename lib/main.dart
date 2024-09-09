import 'package:aplicacao_chamados/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 0, 0),
  primary: const Color.fromARGB(255, 49, 75, 136),
  primaryContainer: const Color.fromARGB(255, 49, 75, 136),
  onPrimary: const Color.fromARGB(255, 49, 75, 136),
  onPrimaryContainer: const Color.fromARGB(255, 49, 75, 136),
  secondary: const Color.fromARGB(255, 77, 95, 151),
  secondaryContainer: const Color.fromARGB(255, 77, 95, 151),
  onSecondary: const Color.fromARGB(255, 77, 95, 151),
  onSecondaryContainer: const Color.fromARGB(255, 77, 95, 151),
  
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          colorScheme: kDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kDarkColorScheme.onPrimaryContainer,
              foregroundColor: kDarkColorScheme.primaryContainer),
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kDarkColorScheme.onSecondaryContainer,
                    fontSize: 16),
              ),
        ),
        themeMode: ThemeMode.system,
        home: const Menu(),
      ),
    );
  });
}
