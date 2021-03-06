import 'package:flutter/material.dart';
import 'package:prefab_app/screens/about_us_screen/about_us_screen.dart';
import 'package:prefab_app/screens/automation_screen/automation_screen.dart';
import 'package:prefab_app/screens/components_screen/components_screen.dart';
import 'package:prefab_app/screens/contact_us_screen/contact_us_screen.dart';
import 'package:prefab_app/screens/home_screen/home_screen.dart';
import 'package:prefab_app/screens/prefab_screen/prefab_screen.dart';
import 'package:prefab_app/screens/prefabs_screen/prefabs_screen.dart';
import 'package:prefab_app/screens/specialized_screen/specialized_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expert Prefab Technologies and Online Store',
      theme: ThemeData(
        primaryColorDark: Color(0xFF0D3A35),
        primaryColor: Color(0xFF13544C),
        primaryColorLight: Color(0xFFB8CBC9),
        accentColor: Color(0xFFEFE8D8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ComponentsScreen.routeName: (context) => ComponentsScreen(),
        PrefabsScreen.routeName: (context) => PrefabsScreen(),
        PrefabScreen.routeName: (context) => PrefabScreen(),
        AboutUsScreen.routeName: (context) => AboutUsScreen(),
        ContactUsScreen.routeName: (context) => ContactUsScreen(),
        AutomationScreen.routeName: (context) => AutomationScreen(),
        SpecializedScreen.routeName: (context) => SpecializedScreen()
      },
      // initialRoute: AboutUsScreen.routeName,
      // initialRoute: HomeScreen.routeName,
      // onGenerateRoute: (RouteSettings settings) {
      //   Map<String, WidgetBuilder> routes = {
      //     HomeScreen.routeName: (context) => HomeScreen(),
      //     ComponentsScreen.routeName: (context) => ComponentsScreen()
      //   };

      //   WidgetBuilder builder = routes[settings.name];
      //   return MaterialPageRoute(builder: builder);
      // },
    );
  }
}
