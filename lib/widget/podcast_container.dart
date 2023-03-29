import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import 'package:podcas/widget/home_page_widget.dart';
import 'package:podcas/widget/mycolor.dart';

import '../domain/Podcasts_model.dart';

class PodcastContainer extends StatelessWidget {
  final PodcastsModel data;
  const PodcastContainer({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      height: 30.h,
      width: 25.w,
      decoration: BoxDecoration(
          gradient: myGradient(), borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 10.5.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(data.img), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 0.8.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.tag,
                  style: TextStyle(
                      color: Mycolor.purpelColor,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.8.h,
                ),
                Text(
                  data.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 0.8.h,
                ),
                Text(
                  data.desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    //  fontWeight: FontWeight.w400
                  ),
                ),
                Expanded(child: SizedBox()),
                SizedBox(
                  height: 8.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 4.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff5a54da),
                                    Color(0xff7f44ed)
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                size: 12.sp,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 0.4.w,
                              ),
                              Text(
                                'Resume',
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '${data.time} minit left',
                        style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
