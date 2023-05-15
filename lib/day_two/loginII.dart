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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome Back,\t',
                        style: TextStyle(
                            height: 1.7,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
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
                ],
              ),
            ),
            Center(child: Image.asset('assets/logo.png')),
            const Gap(10),
            const Center(
              child: Text(
                'LOREMIPSUM',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kMainColor),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text(
                          'Username',
                          style: TextStyle(color: Colors.grey),
                        ),
                        isCollapsed: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: buildUnderlineInputBorder(),
                        focusedBorder: buildUnderlineInputBorderII(),
                        border: buildUnderlineInputBorder()),
                  ),
                  const Gap(30),
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text(
                          'Password',
                          style: TextStyle(color: Colors.grey),
                        ),
                        isCollapsed: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: buildUnderlineInputBorder(),
                        focusedBorder: buildUnderlineInputBorderII(),
                        border: buildUnderlineInputBorder()),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: false,
                            checkColor: Colors.white,
                            activeColor: kMainColor,
                            onChanged: (value) {},
                          ),
                          const Gap(1),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                        ],
                      ),
                      const Text(
                        'Forgotten password',
                        style: TextStyle(
                            color: kMainColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0, 8),
                                color: kMainColor.withOpacity(0.4))
                          ]),
                      child: Center(
                          child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16, color: Colors.grey[200]),
                      ))),
                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: kMainColor.withOpacity(0.3),
                      )),
                      const Gap(20),
                      Text(
                        'Dont Have Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400]),
                      ),
                      const Gap(20),
                      Expanded(
                          child: Divider(
                        color: kMainColor.withOpacity(0.3),
                      )),
                    ],
                  ),
                  const Gap(30),
                  Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kMainColor, width: 1.5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0, 8),
                                color: Colors.grey.withOpacity(0.4))
                          ]),
                      child: const Center(
                          child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ))),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  UnderlineInputBorder buildUnderlineInputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.0),
    );
  }

  UnderlineInputBorder buildUnderlineInputBorderII() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: kMainColor, width: 2.0),
    );
  }
}
