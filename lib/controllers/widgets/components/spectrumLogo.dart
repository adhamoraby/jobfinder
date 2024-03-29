import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpectrumIcon extends StatelessWidget {
  const SpectrumIcon(
      {Key? key,
        required this.backGroundWidth,
        required this.backGroundHeight,
        required this.birdHeight,
        required this.birdWidth})
      : super(key: key);
  final int backGroundWidth;
  final int backGroundHeight;
  final int birdHeight;
  final int birdWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(
              61,
              53,
              222,
              1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          width: backGroundWidth.w,
          height: backGroundHeight.h,
        ),
        Padding(
          padding:
          EdgeInsets.only(left: 7.w, top: 9.5.h, bottom: 7.5.w, right: 5.w),
          child: SvgPicture.asset(
            'assets/Icons/spectrum.svg',
            height: birdHeight.h,
            width: birdWidth.w,
          ),
        ),
      ],
    );
  }
}

