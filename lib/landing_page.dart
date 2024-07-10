import 'package:building/assets/image_assets.dart';
import 'package:building/theme/color_theme.dart';
import 'package:building/widget/landing_searchbar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: Icon(
            Icons.pool,
            color: mainThemeColor,
            size: 80,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.cntraveler.com/photos/561fc580799ed1fe16a2e112/master/pass/The-Palazzo-Pool-LV-Courtesy.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: mainThemeColor.withOpacity(0.7),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Paradise',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Icon(
                Icons.pool,
                color: Colors.white,
                size: 80,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Choolse your Location'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "find a hotel".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LandingSearchbar()
            ],
          )
        ],
      ),
    );
  }
}
