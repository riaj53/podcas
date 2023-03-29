import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:podcas/presentation/home_page.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation,deviceType) {
        return MaterialApp(
          home: HomePage(),
        );
      },
    );
  }
}
