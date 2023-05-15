import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const kMainColor = Color(0xff153f69);

class DayTwoLoginScreen extends StatefulWidget {
  const DayTwoLoginScreen({Key? key}) : super(key: key);

  @override
  State<DayTwoLoginScreen> createState() => _DayTwoLoginScreenState();
}

class _DayTwoLoginScreenState extends State<DayTwoLoginScreen> {
  late final FocusNode _focusNode;
  late final FocusNode _focusNodeII;

  bool _isClicked = false;
  bool _isClickedII = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(_onFocusChanged);
    _focusNodeII = FocusNode()..addListener(_onFocusChangedII);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNodeII.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    setState(() {
      _isClicked = _focusNode.hasFocus;
    });
  }

  void _onFocusChangedII() {
    setState(() {
      _isClickedII = _focusNodeII.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2 + 200,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo.png'),
                    const Gap(10),
                    const Text(
                      'LOREMIPSUM',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: kMainColor),
                    ),
                    const Gap(50),
                    TextFormField(
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                          border: _isClicked
                              ? buildOutlineInputBorder()
                              : buildOutlineInputBorderII(),
                          focusedBorder: _isClicked
                              ? buildOutlineInputBorder()
                              : buildOutlineInputBorderII(),
                          isCollapsed: true,
                          filled: true,
                          fillColor: _isClicked
                              ? Colors.white
                              : kMainColor.withOpacity(0.1),
                          hintText: 'Enter your email',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: kMainColor,
                            size: 19,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12)),
                    ),
                    const Gap(15),
                    TextFormField(
                      focusNode: _focusNodeII,
                      decoration: InputDecoration(
                          border: _isClickedII
                              ? buildOutlineInputBorder()
                              : buildOutlineInputBorderII(),
                          focusedBorder: _isClickedII
                              ? buildOutlineInputBorder()
                              : buildOutlineInputBorderII(),
                          isCollapsed: true,
                          filled: true,
                          fillColor: _isClickedII
                              ? Colors.white
                              : kMainColor.withOpacity(0.1),
                          hintText: 'Enter your password',
                          prefixIcon: const Icon(
                            Icons.lock_outline_rounded,
                            color: kMainColor,
                            size: 19,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12)),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: true,
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
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 55,
                        decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(30),
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[200]),
                        )))
                  ],
                ),
              ),
              const Gap(30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.g_mobiledata, size: 30)),
                  Gap(10),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.facebook, size: 26, color: Colors.blue)),
                  Gap(10),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.apple, size: 26)),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an account?',style: TextStyle(color: Colors.white,fontSize: 12),),
                  const Gap(10),
                  Text('Sign Up here',style: TextStyle(color: Colors.grey[200],fontSize: 12),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: kMainColor, width: 2.0),
      );

  OutlineInputBorder buildOutlineInputBorderII() => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      );
}
