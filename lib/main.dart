import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter_jobs/provider/my_provider.dart';
import 'package:flutter_jobs/routes.dart';

void main () async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),
    child:  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    )
  ));
}

