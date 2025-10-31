import 'package:flutter/material.dart';
import 'package:islamic_app/feature/hadeth/model/hadeth_model.dart';

import 'hadeth_item.dart';

class AhadethList extends StatelessWidget {
   AhadethList({super.key,required this.ahadeth});
  List <HadethModel> ahadeth;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return HadethItem(hadeth: ahadeth[index]);
        },
        separatorBuilder: (context, index) => Divider(thickness: 1.5,color: Theme.of(context).dividerColor,),
        itemCount: ahadeth.length,
      ),
    );
  }
}
