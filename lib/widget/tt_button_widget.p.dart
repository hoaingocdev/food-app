import 'package:flutter/material.dart';
import 'package:food/res/color.p.dart';
import 'package:food/res/style.p.dart';

class TTButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  const TTButtonWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  _TTButtonWidgetState createState() => _TTButtonWidgetState();
}

class _TTButtonWidgetState extends State<TTButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Cl.colorFECA01,
        ),
        child: Center(
          child: Text(
            'Create Account',
            style: St.body16600.copyWith(color: Cl.color212931),
          ),
        ),
      ),
    );
  }
}
