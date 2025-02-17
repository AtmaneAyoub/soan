import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text_widget.dart';
import '../constants.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 95.h,
        width: 95.w,
        decoration: BoxDecoration(
            color: kLightLightGreyColor,
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
            child: SvgPicture.asset(
          image,
          // ignore: deprecated_member_use
          color: kBlueColor,
        )),
      ),
      2.verticalSpace,
      FittedBox(
        child: TextWidget(
          text: name,
          size: 14,
          color: kDarkBleuColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    ]);
  }
}
