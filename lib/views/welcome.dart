import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/controllers/all.controllers.dart';
import 'package:myfirstapp/controllers/theme.controller.dart';
import 'package:myfirstapp/components/my_drawer.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController =
        Provider.of<NavigationController>(context);
    return Scaffold(
      extendBody: true,
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (i) {
            setState(() {
              isLastPage = i == 2;
            });
          },
          controller: controller,
          children: [
            buildWelcomePage(
              color: Colors.indigo.shade400,
              urlImage:
                  'https://cdn-icons-png.flaticon.com/512/4341/4341039.png',
              title: 'REDUCE',
              subtitle: 'Laboris nulla ex nostrud magna id et exercitation.',
            ),
            buildWelcomePage(
              color: Colors.green.shade400,
              urlImage:
                  'https://cdn-icons-png.flaticon.com/512/4341/4341079.png',
              title: 'SOMETHING',
              subtitle:
                  'Laborum esse do labore exercitation incididunt sit ex tempor.',
            ),
            buildWelcomePage(
              color: Colors.orange.shade400,
              urlImage:
                  'https://cdn-icons-png.flaticon.com/512/4341/4341126.png',
              title: 'SOMETHING ELSE',
              subtitle:
                  'Dolore ullamco ullamco qui elit et quis consectetur exercitation consectetur fugiat.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  maximumSize: const Size.fromHeight(80),
                  backgroundColor: Colors.indigo.shade400,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                navigationController.changeScreen(
                    '/homepage', NavigationItem.homepage);
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
              },
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    child: const Text('Skip'),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.indigo.shade400,
                      ),
                      onDotClicked: (i) => controller.animateToPage(
                        i,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    child: const Text('Next'),
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildWelcomePage(
          {required Color color,
          required String urlImage,
          required String title,
          required String subtitle}) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              urlImage,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
}
