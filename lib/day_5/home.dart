import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SalesHomePage extends StatelessWidget {
  const SalesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.grid_view),
                    Icon(Icons.shopping_cart_outlined),
                  ],
                ),
                const Gap(20),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black45,
                        size: 20,
                      ),
                      hintText: 'Search for games, consoles and more',
                      hintStyle: const TextStyle(color: Colors.black45),
                      fillColor: Colors.white,
                      filled: true,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                const Gap(20),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.4,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffefe5ce),
                        Color(0xfff1d1c6),
                      ],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Future of \nvirtual reality of gaming ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Image.asset('assets/holo.png'),
                    ],
                  ),
                ),
                const Gap(20),
                const Text(
                  'Top Catergory',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Gap(20),
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContainer('Games', Colors.blue.withOpacity(0.4),
                          'assets/games.jpg'),
                      buildContainer('Collectible', Colors.red.withOpacity(0.4),
                          'assets/yod.png'),
                      buildContainer('Games', Colors.yellow.withOpacity(0.4),
                          'assets/Headphone.png'),
                    ],
                  ),
                ),
                const Gap(20),
                const Text(
                  'Trending games',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Gap(30),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        padding: const EdgeInsets.only(left: 110),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Farlight 84',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.6),
                            ),
                            Gap(3),
                            Text(
                              'ANDROID || IOS || PS4 || XBOX',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/farlight.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(String hintText, Color color, String image) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            hintText,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Colors.black54),
          ),
          Image.asset(
            image,
            width: 120,
            height: 120,
          ),
        ],
      ),
    );
  }
}
