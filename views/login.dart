import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/views/color-pallette.dart';
import 'package:flutterui/views/forget_password.dart';
import 'package:flutterui/views/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),*/
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/images/topImage.svg",
              fit: BoxFit.cover,
              height: height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: SvgPicture.asset(
                      true
                          ? "assets/images/logoWhite.svg"
                          : "assets/images/logoRgb.svg",
                      width: 250,
                    )),
                    customSizedBox(),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "E-mail Adresi",
                          icon: Icon(
                            Icons.email_outlined,
                          )),
                    ),
                    customSizedBox(),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Şifre",
                        icon: Icon(Icons.key),
                      ),
                    ),
                    customSizedBox(),
                    Theme(
                      data:
                          ThemeData(primaryColor: ColorPallette.buttonPrimary),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ForgetPassword()));
                          },
                          child: const Text(
                            "Şifreni mi unuttun ?",
                          )),
                    ),
                    customSizedBox(),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {},
                        child: const Text("Giriş Yap",
                            style: TextStyle(fontSize: 17)),
                      ),
                    ),
                    customSizedBox(),
                    const Divider(),
                    Center(
                      child: Theme(
                        data: ThemeData(
                            primaryColor: ColorPallette.buttonPrimary),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const Register()));
                          },
                          child: const Text(
                            "Hesabınız yok mu ? Kayıt ol",
                          ),
                        ),
                      ),
                    ),
                    customSizedBox()
                  ]),
            )
          ],
        ),
      ),
    );
  }

  SizedBox customSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }
}
