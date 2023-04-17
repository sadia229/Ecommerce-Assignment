import 'package:ecommerce/general/constants/asset_path.dart';
import 'package:ecommerce/general/utils/colors.dart';
import 'package:ecommerce/general/utils/text_style.dart';
import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text(
        "Marketplace",
        style: KTextStyle.headline3.copyWith(color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        const CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AssetPath.profile),
        ),
        const SizedBox(width: 16),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: KColor.background.withOpacity(0.2),
            child: Icon(Icons.search, color: KColor.background, size: 22),
          ),
        ),
      ],
    );
  }
}
