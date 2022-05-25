library onboarding;

import 'package:flutter/material.dart';
import 'package:food/module/login/login_public.dart';
import 'package:food/res/color.p.dart';
import 'package:food/res/res.dart';
import 'package:food/res/style.p.dart';
import 'package:provider/provider.dart';
import 'package:food/widget/widget.dart';

part 'onboarding_view.dart';
part 'onboarding_model.dart';
part 'onboarding_state.dart';
part 'widgets/background_widget.dart';

ChangeNotifierProvider<_OnboardingModel> createOnboarding() {
  return ChangeNotifierProvider<_OnboardingModel>(
    create: (_) => _OnboardingModel(),
    child: _OnboardingView(),
  );
}
