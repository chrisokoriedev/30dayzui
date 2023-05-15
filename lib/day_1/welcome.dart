import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const kMainColor = Color(0xffffa6ac);

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Yolo',
                style: TextStyle(
                    height: 1.2,
                    fontSize: 60,
                    color: kMainColor,
                    fontWeight: FontWeight.w900),
              ),
              const Text(
                'Where  people meet',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black26,
                    letterSpacing: 1.9,
                    wordSpacing: 1.2,
                    fontWeight: FontWeight.w600),
              ),
              const Gap(20),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4 + 40,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(80)),
                    image: DecorationImage(
                        image: AssetImage('assets/bg1.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Gap(50),
              const Text(
                'Let us find you strangers based on your preferences',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 22, height: 1.6),
              ),
              const Gap(40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const WelcomeScreenII()));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeScreenII extends StatelessWidget {
  const WelcomeScreenII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 900,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Text(
                        'YOLO',
                        style: TextStyle(
                            fontSize: 70,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 10
                              ..color = Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'YOLO',
                        style: TextStyle(
                            fontSize: 70,
                            color: kMainColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2 + 30,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Instantly date with strangers.',
                      style: TextStyle(fontSize: 28, height: 1.3),
                    ),
                    const Gap(20),
                    const Text(
                      'Mind it Never let a fool kiss you, or a kiss fool you',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          height: 1.3,
                          wordSpacing: 1.3),
                    ),
                    const Gap(40),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Create a new account',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kMainColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Login with biometric',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Terms and Conditions',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black26,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          width: 2,
                          height: 18,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.black26,
                        ),
                        const Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black26,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
