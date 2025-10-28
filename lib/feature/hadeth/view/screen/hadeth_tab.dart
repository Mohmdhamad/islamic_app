import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/hadeth/view/widget/ahadeth_head.dart';
import 'package:islamic_app/feature/hadeth/view/widget/ahadeth_list.dart';

import '../../model/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadAhadeth();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AppImages.hadethLogo)),
        AhadethHead(),
        ahadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : AhadethList(ahadeth: ahadeth),
      ],
    );
  }

  void loadAhadeth() async {
    String ahadethContent = await rootBundle.loadString(
      'assets/files/ahadeth.txt',
    );
    List<String> hadethContent = ahadethContent.split('#\r\n');
    for (int i = 0; i < hadethContent.length; i++) {
      print(hadethContent[i]);
      List<String> hadethLines = hadethContent[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      HadethModel hadeth = HadethModel(title: title, content: hadethLines);
      ahadeth.add(hadeth);
      setState(() {});
    }
  }
}
