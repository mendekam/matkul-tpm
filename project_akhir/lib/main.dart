import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/game_model.dart';
import 'pages/game_detail_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/splashscreen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Akhir TPM',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      initialRoute: SplashScreen.routeName, 
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routeName: (context) => HomePage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == GameDetailPage.routeName) {
          final game = settings.arguments as GameModel;
          return MaterialPageRoute(
            builder: (context) => GameDetailPage(game: game),
          );
        }
        return null; 
      },
      home: FutureBuilder<bool>(
        future: isLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final isLoggedIn = snapshot.data!;
            if (isLoggedIn) {
              return HomePage();
            } else {
              return LoginPage();
            }
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}

Future<bool> isLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLoggedIn') ?? false;
}
