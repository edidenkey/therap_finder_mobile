import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppThemes {
  static const String _mainFont = 'Poppins';

  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 74.0, fontWeight: FontWeight.w300, letterSpacing: -5.0, height: 1.0),
    displayMedium: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w300, letterSpacing: -4.0, height: 1.0),
    displaySmall: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w400, letterSpacing: -3.0, height: 1.15),
    headlineMedium: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400, letterSpacing: -1.5, height: 1.15),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: -0.5, height: 1.3),
    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, letterSpacing: -0.25, height: 1.3),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.1),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.5),
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelSmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  );

  //----------------------------------------- Light Theme
  static const int _lightPalettePrimaryValue = 0xff17c1e8;
  static const MaterialColor lightPalette = MaterialColor(_lightPalettePrimaryValue, <int, Color>{
    50: Color(0xffe8f9fd),
    100: Color(0xffd1f3fa),
    200: Color(0xffa2e6f6),
    300: Color(0xff74daf1),
    400: Color(0xff45cded),
    500: Color(_lightPalettePrimaryValue),
    600: Color(0xff129aba),
    700: Color(0xff0e748b),
    800: Color(0xff094d5d),
    900: Color(0xff05272e)
  });

  static const int _lightPaletteAccentValue = 0xFF7192FF;
  static const MaterialColor _lightPaletteAccent = MaterialColor(_lightPaletteAccentValue, <int, Color>{
    100: Color(0xFFA4B9FF),
    200: Color(_lightPaletteAccentValue),
    400: Color(0xFF3E6BFF),
    700: Color(0xFF2558FF),
  });

  static final Color _errorColor = Colors.red.shade400;
  static final ColorScheme _lightColorScheme = ColorScheme.fromSwatch(
    accentColor: _lightPaletteAccent,
    primarySwatch: lightPalette,
    errorColor: _errorColor,
  );

  static final TextSelectionThemeData _lightTextSelectionThemeData = TextSelectionThemeData(
    cursorColor: lightPalette.shade400,
    selectionColor: lightPalette.shade100,
    selectionHandleColor: lightPalette.shade400,
  );

  static final InputDecorationTheme _lightInputDecorationTheme = InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    border: const OutlineInputBorder(
      borderSide: BorderSide(width: 1.5),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: lightPalette.shade400),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: _errorColor),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: _errorColor),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    errorStyle: TextStyle(color: _errorColor),
  );

  static final TextButtonThemeData _lightTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      shadowColor: Colors.transparent,
      splashFactory: InkSplash.splashFactory,
    ),
  );

  static final OutlinedButtonThemeData _lightOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      side: const BorderSide(width: 1, color: Colors.black12),
      foregroundColor: lightPalette,
      splashFactory: InkSplash.splashFactory,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  );

  static final ElevatedButtonThemeData _lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      elevation: 0,
      backgroundColor: lightPalette,
      foregroundColor: Colors.grey.shade300,
      shadowColor: Colors.transparent,
      splashFactory: InkSplash.splashFactory,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  );

  static final AppBarTheme _lightAppBarTheme = AppBarTheme(
    backgroundColor: lightPalette,
    shadowColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.white),
    actionsIconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: _textTheme.titleLarge!.copyWith(
      fontFamily: _mainFont,
      letterSpacing: 0.1,
      overflow: TextOverflow.ellipsis,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  static final NavigationBarThemeData _lightNavigationBarThemeData = NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: lightPalette.withOpacity(0.9),
    iconTheme: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return IconThemeData(color: lightPalette.shade50);
      }
      return const IconThemeData(color: Colors.black87);
    }),
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    labelTextStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primarySwatch: lightPalette,
    colorScheme: _lightColorScheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: _lightAppBarTheme,
    navigationBarTheme: _lightNavigationBarThemeData,
    fontFamily: _mainFont,
    textTheme: _textTheme,
    textSelectionTheme: _lightTextSelectionThemeData,
    inputDecorationTheme: _lightInputDecorationTheme,
    textButtonTheme: _lightTextButtonThemeData,
    outlinedButtonTheme: _lightOutlinedButtonThemeData,
    elevatedButtonTheme: _lightElevatedButtonThemeData,
  );
}
