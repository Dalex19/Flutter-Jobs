import 'package:flutter/material.dart';

import 'package:flutter_jobs/public_screens.dart';

void main() {
  runApp( 
    MaterialApp.router(
      routerConfig: public_screens,
    )
  );
}

