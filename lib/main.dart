import 'package:cars/core/theme/app_pallete.dart';
import 'package:cars/core/widgets/appbar.dart';
import 'package:cars/core/widgets/bottomnavbar.dart';
import 'package:cars/core/widgets/drawer.dart';
import 'package:cars/features/auth/presentation/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: <Widget>[
                    FlutterCarousel(
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(20)),
                                      // color: Colors.amber,
                                      gradient: LinearGradient(colors: [
                                        AppPallete.gradient1,
                                        AppPallete.gradient2
                                      ])),
                                  child: Text(
                                    'text $i',
                                    style: const TextStyle(fontSize: 16.0),
                                  ));
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 1700),
                          autoPlayCurve: Curves.ease,
                          reverse: true,
                          height: 200.0,
                          showIndicator: false,
                          slideIndicator: const CircularSlideIndicator(),
                        )),
                    Text(
                      'Welcome to Car Sharing App',
                    ),
                    Text(
                      'Welcome to Car Sharing App',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
