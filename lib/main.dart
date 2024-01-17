import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_jobs/provider/my_provider.dart';
import 'package:flutter_jobs/routes.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),
    child:  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    )
  ));
}

