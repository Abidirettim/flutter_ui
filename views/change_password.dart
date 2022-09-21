import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/views/color-pallette.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                child: Column(children: [
                  const Text("Şifre Değiştir", style: TextStyle(fontSize: 40)),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Eski Şifre", icon: Icon(Icons.key)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Yeni Şifre", icon: Icon(Icons.key)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Şifreyi Onayla", icon: Icon(Icons.key)),
                  ),
                  customSizedBox(),
                  customSizedBox(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_note),
                      label: const Text(
                        "Şifreyi Değiştir",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  customSizedBox(),
                  const Divider(),
                  Center(
                    child: Theme(
                      data:
                          ThemeData(primaryColor: ColorPallette.buttonPrimary),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Vaz mı geçtin ? Profil",
                        ),
                      ),
                    ),
                  ),
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
