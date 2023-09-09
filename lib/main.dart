import 'package:flutter/material.dart';

void main() {
  runApp(logInPage());
}

class loadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff18b888), // 배경 민트색
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 290,
                right: 5,
                left: 0.2,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.transparent, // 이미지는 투명하게
                    BlendMode.srcOver, // 투명한 이미지 배경색으로 덮기
                  ),
                  child: Image.asset(
                    'assets/images/parrotW.png', // 앵무새 사진 데려오기
                    width: 130,
                    height: 170,
                  ),
                ),
              ),
              Positioned( // positioned 활용해서 배치하기
                top: 500,
                child: Text(
                  "Parrot Clinic",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class logInPage extends StatefulWidget {
  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  bool _isButtonPressed = false;
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 85,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.transparent,
                    BlendMode.dstOver,
                  ),
                  child: Image.asset(
                    'assets/images/parrotB.png', // 앵무새 사진 데려오기
                    width: 66,
                    height: 73,
                  ),
                ),
              ),
              Positioned(
                top: 175,
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff173430),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                child: Text(
                  'Please Sign in to your account.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA0A6A6)),
                ),
              ),
              Positioned(
                top: 279,
                left: 24,
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA0A6A6)),
                ),
              ),
              Positioned(
                top: 310,
                left: 24,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isButtonPressed = !_isButtonPressed;
                      if (!_isButtonPressed) {
                        _emailController.clear();
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff6f7f7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    minimumSize: Size(342, 56),
                    alignment: Alignment.centerLeft,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 64.0),
                    child: _isButtonPressed
                        ? TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(
                          color: Color(0xffB8BEBE),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: TextStyle(
                        color: Color(0xffB8BEBE), // 입력한 텍스트 색상
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                        : Text(
                      "Enter your Email",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffB8BEBE),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

