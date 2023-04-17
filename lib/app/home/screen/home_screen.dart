import 'package:ecommerce/general/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar/k_appbar.dart';
import '../components/add_sppedometer.dart';
import '../components/client_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: KAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Plumbing Jobs",style: KTextStyle.title1),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload)),
                ],
              ),
            ),
            const ClientInfo(),
            const AddSpeedometer(),
          ],
        ),
      ),
    );
  }
}
