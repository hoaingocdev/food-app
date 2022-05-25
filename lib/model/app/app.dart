import 'package:flutter/material.dart';
import 'package:food/module/onboarding/onboarding_public.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createOnboarding(),
    );
  }
}
