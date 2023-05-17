import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

const kDarkColor = Color(0xff030304);

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeceefb),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 60.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Twc',
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 400.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.sp),
                      ),
                      Text(
                        'Pricing',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      Text(
                        'Key Feature',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      Text(
                        'About',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      Text(
                        'Blog',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      Container(
                         width: 55.w,
                          height: 52.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: kDarkColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Sign in',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Gap(70.sp),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4 - 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Benefits of \nregular\nexercise',
                        style: TextStyle(
                            fontSize: 90.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.2),
                      ),
                      Gap(30.sp),
                      Text(
                        'At our fitness studio, you can experience\nthe best level of customer care service',
                        style: TextStyle(
                            fontSize: 24.sp, wordSpacing: 1.6, height: 1.2),
                      ),
                      Gap(30.sp),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.w, vertical: 18.h),
                          decoration: BoxDecoration(
                              color: kDarkColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 10,
                                    blurRadius: 20,
                                    offset: Offset(0, 6)),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Contact us',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5-40,
                  height: 500,
                  child: Stack(
                    children: [
                      Positioned(child: buildContainer(context, Colors.grey)),
                      Positioned(
                          left: 80,
                          child: buildContainer(context, Colors.black)),
                      Positioned(
                          left: 150,
                          child: buildContainer(context, Colors.white))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 500,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
