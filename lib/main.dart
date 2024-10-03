// admin panel

// import 'package:ecommapp/controller/homecontroller.dart';
// import 'package:ecommapp/firebase_options.dart';
// import 'package:ecommapp/pages/home.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main()async{

//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform
//   );
//     Get.put(HomeController());
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }



// customer app
import 'package:ecommapp/customerpages/homepage.dart';
import 'package:ecommapp/customerpages/loginpage.dart';
import 'package:ecommapp/customerpages/registration.dart';
import 'package:ecommapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Top-level main() function
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      // Registerpage(),
       CustomerHomepage(),
    );
  }
}
