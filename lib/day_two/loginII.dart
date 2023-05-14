import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'login.dart';


class LoginTwo extends StatelessWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Welcome Back,\t',
                    style: TextStyle(
                        height: 1.7, fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        height: 1.7,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Text(
                'for Continue !',
                style: TextStyle(
                    height: 1.7, fontSize: 21, fontWeight: FontWeight.w500),
              ),
              Center(child: Image.asset('assets/logo.png')),
              const Gap(10),
              Center(
                child: const Text(
                  'LOREMIPSUM',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: kMainColor),
                ),
              ),

            ],
        ),
      ),
          )),
    );
  }
}
