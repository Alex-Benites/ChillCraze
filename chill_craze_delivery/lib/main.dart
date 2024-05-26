import 'package:chill_craze_delivery/app.dart';
import 'package:chill_craze_delivery/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          "AIzaSyCBH2eVKW4E1h2DK0_fpYNS4TvC-8PN7r4", // paste your api key here
      appId:
          "1:941457330996:android:926bafa87c4580cb4e8b61", //paste your app id here
      messagingSenderId: "941457330996", //paste your messagingSenderId here
      projectId: "chillcraze2", //paste your project id here
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}