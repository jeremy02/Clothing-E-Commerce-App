import 'package:clothing_e_commerce_app/utils/app_utils.dart';
import 'package:flutter/material.dart';

class HorizontalDividerOrTextWidget extends StatelessWidget {

  const HorizontalDividerOrTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Divider(
            thickness: 1.0,
            color: AppUtils.hexToColor("#232E24"),
            indent: 48,
            endIndent: 20,
            height: 0.5,
          ),
        ),
        Text(
          "Or",
          style: TextStyle(
            fontSize: 17,
            color: AppUtils.hexToColor("#230A06"),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1.0,
            color: AppUtils.hexToColor("#232E24"),
            indent: 20,
            endIndent: 48,
            height: 0.5,
          ),
        ),
      ],
    );
  }
}
