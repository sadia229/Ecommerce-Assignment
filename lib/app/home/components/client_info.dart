import 'package:ecommerce/app/home/components/select_category.dart';
import 'package:ecommerce/general/constants/asset_path.dart';
import 'package:ecommerce/general/utils/config.dart';
import 'package:ecommerce/general/utils/text_style.dart';
import 'package:ecommerce/widgets/button/custom_btn.dart';
import 'package:flutter/material.dart';
import '../../../general/utils/colors.dart';

class ClientInfo extends StatefulWidget {
  const ClientInfo({Key? key}) : super(key: key);

  @override
  State<ClientInfo> createState() => _ClientInfoState();
}

class _ClientInfoState extends State<ClientInfo> {
  bool task = false;
  bool video = false;
  bool distance = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: context.screenWidth,
        color: KColor.bg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I need a Faucet installed in my new kitchen. It is ...",
              style: KTextStyle.title1,
            ),
            const SizedBox(height: 5),
            Text(
              "Date : 23-Nov-2021 08:39 PM.",
              style: KTextStyle.title7.copyWith(
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AssetPath.profile),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("John Doe (Vlient)", style: KTextStyle.title5),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber),
                            Text("5.0 (420)", style: KTextStyle.title3),
                            const SizedBox(width: 5),
                            Image.asset(AssetPath.hand, height: 20),
                            Image.asset(AssetPath.fnf, height: 20),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const SelectCategory(),
            _workList("Task List", null, task),
            _workList("Photo/Video", null, video),
            _workList("Distance", () {
              setState(() {
                distance = !distance;
              });
            }, distance),
            if (distance == true)
              Column(
                children: [
                  const SizedBox(height: 16),
                  Image.asset(AssetPath.map, height: 120, fit: BoxFit.cover),
                ],
              ),
            SizedBox(height: context.screenHeight*0.08),
            CustomButton(
              btnColor: KColor.background,
              btnWidth: context.screenWidth,
              btnText: "Measurement Table",
              tap: (){},
              btnTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Column _workList(title, tap, bool check) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(color: Colors.white, thickness: 1.2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: KTextStyle.title1),
            InkWell(
                onTap: tap,
                child: check == true
                    ? const Icon(Icons.arrow_downward, size: 18)
                    : const Icon(Icons.arrow_forward_ios, size: 18)),
          ],
        ),
      ],
    );
  }
}
