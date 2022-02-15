import 'package:flutter/material.dart';
import 'package:myfirstapp/views/all.dart';
import 'package:myfirstapp/controllers/all.controllers.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ListenableProvider<NavigationController>(
              create: (_) => NavigationController())
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    NavigationController navigation =
        Provider.of<NavigationController>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: Navigator(
        pages: [
          const MaterialPage(child: WelcomePage()),
          if (navigation.screenName == '/homepage')
            const MaterialPage(child: HomePage()),
          if (navigation.screenName == '/welcome')
            const MaterialPage(child: WelcomePage()),
          if (navigation.screenName == '/view2')
            const MaterialPage(child: View2()),
          if (navigation.screenName == '/signin')
            const MaterialPage(child: SignInPage()),
          if (navigation.screenName == '/signup')
            const MaterialPage(child: SignUpPage()),
          if (navigation.screenName == '/profile')
            const MaterialPage(child: ProfilePage()),
        ],
        onPopPage: (route, result) {
          bool popStatus = route.didPop(result);
          if (popStatus == true) {
            Provider.of<NavigationController>(context, listen: false)
                .changeScreen('/', NavigationItem.welcome);
          }
          return popStatus;
        },
      ),
    );
  }
}
