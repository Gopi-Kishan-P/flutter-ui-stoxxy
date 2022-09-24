import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_assignment/screens/home_screen.dart';
import 'package:ui_assignment/widgets/icons_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff1ecc97),
        errorColor: const Color(0xffeb5656),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff03314b),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: const HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            // setState(() {
            //   currentIndex = value;
            // });
          },
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: homeIcon,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: chartIcon,
              label: 'Charts',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: arrowIcon,
              ),
              label: 'Action',
            ),
            BottomNavigationBarItem(
              icon: candleIcon,
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: userIcon,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
