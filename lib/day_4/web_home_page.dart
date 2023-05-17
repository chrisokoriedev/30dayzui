import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kDarkColor = Color(0xff030304);

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeceefb),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 40.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Twc',
                  style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700),
                ),
                Container(
                  width: 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Home', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp),),
                      Text('Pricing', style: TextStyle(fontSize: 18.sp),),
                      Text('Key Feature', style: TextStyle(fontSize: 18.sp),),
                      Text('About', style: TextStyle(fontSize: 18.sp),),
                      Text('Blog', style: TextStyle(fontSize: 18.sp),),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              color: kDarkColor,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white,fontSize: 18.sp),
                          )),
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
}
