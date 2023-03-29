import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

//for Gradient color
LinearGradient myGradient() {
  return const LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter,
    colors: [Color(0xff22233C), Color(0xff161634)],
  );
}

Widget iconGradient(Icon icon) {
  return ShaderMask(
    shaderCallback: (bounds) => RadialGradient(
      center: Alignment.topLeft,
      radius: 0.5,
      colors: [Color(0xff5a54da), Color(0xff7f44ed)],
      tileMode: TileMode.mirror,
    ).createShader(bounds),
    child: icon,
  );
}

//searchBar
Widget searchBar() {
  // Size size = MediaQuery.of(context).size;

  return Container(
    height: 5.h,
    width: 20.w,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), gradient: myGradient()),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 25,
        ),
      ),
    ),
  );
}

//Scroll Container
// Widget scrollContainler(BuildContext context) {

//   return ScrollContainer(size: size);
// }

Widget topCategoriesButton(
    final String title, final Icon icon, final VoidCallback ontp) {
  // Size size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 8.h,
      width: 12.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: myGradient(),
      ),
      child: ElevatedButton(
        onPressed: ontp,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconGradient(icon),
            SizedBox(
              width: 0.5.w,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 12.sp),
            ),
          ],
        ),
      ),
    ),
  );
}

class MyCustomScroll extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevice =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
