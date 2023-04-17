import 'package:ecommerce/general/utils/config.dart';
import 'package:ecommerce/general/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color btnColor;
  final Color btnTextColor;
  final double btnWidth;
  final String btnText;
  final VoidCallback tap;

  const CustomButton({
    Key? key,
    required this.btnColor,
    required this.btnWidth,
    required this.btnText,
    required this.tap,
    required this.btnTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: btnWidth,
        height: context.screenHeight * 0.06,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: KTextStyle.title1.copyWith(color: btnTextColor),
          ),
        ),
      ),
    );
  }
}
