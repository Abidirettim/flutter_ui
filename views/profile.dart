import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/views/color-pallette.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                  const Text("Hesap Bilgileri", style: TextStyle(fontSize: 40)),
                  customSizedBox(),
                  const Text(
                    "Sistem Kayıt Tarihi: 22-05-2022 18:20:58",
                    style: TextStyle(fontSize: 20),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "İsim Soyisim",
                        icon: Icon(Icons.business_rounded)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "E-Mail Adresi",
                        icon: Icon(Icons.person_outlined)),
                  ),
                  customSizedBox(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Telefon No", icon: Icon(Icons.call)),
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
                        "Bilgileri Değiştir",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  customSizedBox(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.key),
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
                          "Vaz mı geçtin ? Maindashboard",
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
