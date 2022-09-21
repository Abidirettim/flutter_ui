import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/views/color-pallette.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text("Şifremi unuttum",
                        style: TextStyle(fontSize: 40)),
                    customSizedBox(),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "E-mail Adresi",
                          icon: Icon(Icons.email_outlined)),
                    ),
                    customSizedBox(),
                    customSizedBox(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_note),
                        label: const Text("Şifremi Sıfırla",
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
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Şifreni hatırladın mı ? Giriş yap",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
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
