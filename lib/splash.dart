import 'package:flutter/material.dart';
import 'package:resturant_api/snd.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png');
    Widget splash = SplashScreenView(
      navigateRoute: FormPage(),
      duration: 5000,
      imageSize: 200,

    //  imageSrc:"chef",
      text: "TASTE HUB",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.black,
    );


    return MaterialApp(
      title: 'Splash screen Demo',
      home: splash,
    );
  }
}

