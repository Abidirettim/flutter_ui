import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/views/color-pallette.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  const Text("Hesap Oluştur", style: TextStyle(fontSize: 40)),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Firma İsmi",
                        icon: Icon(Icons.business_rounded)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "İsim Soyisim",
                        icon: Icon(Icons.person_outlined)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Telefon No", icon: Icon(Icons.call)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "E-Mail Adresi",
                        icon: Icon(Icons.email_outlined)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Şifre", icon: Icon(Icons.key)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Şifrenizi Onaylayın",
                        icon: Icon(Icons.key_off)),
                  ),
                  customSizedBox(),
                  customSizedBox(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Kayıt Ol",
                          style: TextStyle(fontSize: 17)),
                    ),
                  ),
                  customSizedBox(),
                  const Divider(),
                  Center(
                    child: Theme(
                      data:
                          ThemeData(primaryColor: ColorPallette.buttonPrimary),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Zaten bir hesabınız var mı ? Giriş yap",
                        ),
                      ),
                    ),
                  ),
                  customSizedBox()
                ]),
              ),
            ],
          ),
        ));
  }

  SizedBox customSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }
}
