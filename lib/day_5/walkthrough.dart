import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled2/day_5/home.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8 + 20,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: controller,
                children: [
                  buildContainer('assets/1.png', 'Get in for \non experience',
                      const Color(0xff2c2c68)),
                  buildContainer(
                      'assets/2.jpg',
                      'Enjoy the best\ncustomer experience',
                      const Color(0xff381d14)),
                ],
              ),
            ),
            const Gap(30),

            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const SalesHomePage())),
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.orange),
                child: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 28,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(String image, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 28,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Gap(10),
                Text(
                  'Enjoy a VR & console gaming  experience with any hiccups',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[400]),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: controller, // PageController
                      count: 2,
                      effect: const ExpandingDotsEffect(
                          spacing:  8.0,
                          radius:  4.0,
                          dotWidth:  10.0,
                          dotHeight:  5.0,
                          strokeWidth:  1.5,
                          dotColor:  Colors.grey,
                          activeDotColor:  Colors.orange
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
