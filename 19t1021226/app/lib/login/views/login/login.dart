import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Image(image: AssetImage("assets/background_login.png")),
          Positioned(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 69.89,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 106.0,
                          width: 105.27,
                          child: Image(image: AssetImage("assets/logo.png")),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Làng Thông Minh".toUpperCase(),
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              "smart  villages",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w100,
                                fontFamily: "",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 87.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Số điện thoại"),
                        ),
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Mật khẩu",
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    child: Text(
                                      "Quên mật khẩu ?",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 16.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 390.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.green),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Đăng Nhập",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Bạn chưa có tài khoản đăng ký ? "),
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "Đăng ký",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.green),
                                )),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
