import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../helper/const.dart';
import '../voulinteering_controller.dart';

class VoulnteeringType extends StatefulWidget {
  const VoulnteeringType();

  @override
  _VoulnteeringTypeState createState() => _VoulnteeringTypeState();
}

class _VoulnteeringTypeState extends State<VoulnteeringType> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: context.read<VoulinteeringController>().voulTypeList.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 50,
      ),
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              context.read<VoulinteeringController>().voulTypeList[index],
              style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontFamily: "FontBold",
              ),
            ),
            Radio(
              value: index,
              activeColor:kPrimaryColor,
              groupValue:
                  context.watch<VoulinteeringController>().voulTypeSeleced,
              onChanged: (value) {
                context.read<VoulinteeringController>().updateVoulVal(value!);
              },
            ),
            const SizedBox(width: 5),

          ],
        );
      },
    );
  }
}
