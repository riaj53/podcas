import 'package:flutter/material.dart';
import 'package:podcas/domain/recommended_model.dart';

import 'package:podcas/widget/home_page_widget.dart';
import 'package:podcas/widget/mycolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecommendedContainer extends StatelessWidget {
  final RecommendedModel data;
  const RecommendedContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 36.h,
        width: 12.w,
        decoration: BoxDecoration(
            gradient: myGradient(), borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.h,
              // width: 12.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(data.img), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Text(
              data.tag.toUpperCase(),
              style: TextStyle(
                  color: Mycolor.purpelColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              data.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              data.author.toUpperCase(),
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
