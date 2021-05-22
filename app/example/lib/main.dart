import 'package:example/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'rooms.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final ThemeData _themeData = ThemeData(
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
    ),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
      ),
    );
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      theme: _themeData,
      // home: const RoomsPage(),
      home: const NavigationPage(),
    );
  }
}
