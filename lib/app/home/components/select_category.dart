import 'package:ecommerce/app/home/controller/category_controller.dart';
import 'package:ecommerce/general/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../general/constants/constants.dart';
import '../../../general/utils/text_style.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  final CategoryController controller = Get.put(CategoryController());
  int currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
    Get.delete<CategoryController>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: context.screenWidth,
        height: 40,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return _buildButton(
              category[index],
              index == currentIndex ? Colors.black : Colors.green,
              () {
                setState(() {
                  currentIndex = index;
                  controller.size.value = category[index];
                });
              },
              Colors.white,
            );
          },
        ),
      ),
    );
  }

  InkWell _buildButton(quantity, color, pressed, textColor) {
    return InkWell(
      onTap: pressed,
      child: AnimatedContainer(
        margin: const EdgeInsets.only(right: 10),
        curve: Curves.easeInOut,
        width: context.screenWidth*0.3,
        height: 40.0,
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          //color: Colors.orange[900],
          color: color,
        ),
        child: Center(
          child: Text(
            quantity,
            style: KTextStyle.title4.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
