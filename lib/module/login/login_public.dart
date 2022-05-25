library login;

import 'package:flutter/material.dart';
import 'package:food/res/color.p.dart';
import 'package:provider/provider.dart';
import 'package:food/widget/widget.dart';

part 'login_view.dart';
part 'login_model.dart';
part 'login_state.dart';

ChangeNotifierProvider<_LoginModel> createLogin() {
  return ChangeNotifierProvider<_LoginModel>(
    create: (_) => _LoginModel(),
    child: _LoginView(),
  );
}
