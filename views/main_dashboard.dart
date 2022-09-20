import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  dashboard(1, "Tesisler", Icons.business_rounded),
                  customSizedBox(),
                  dashboard(1, "Kullanıcılar", Icons.person_outlined),
                  customSizedBox(),
                  dashboard(1, "Roller", Icons.abc),
                  customSizedBox(),
                  dashboard(1, "Modemler", Icons.keyboard_command_key),
                  customSizedBox(),
                  dashboard(1, "Cihazlar", Icons.abc),
                  customSizedBox(),
                  dashboard(1, "Etiketler", Icons.abc),
                  customSizedBox(),
                  dashboard(1, "Fonksiyonlar", Icons.abc),
                  customSizedBox(),
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

  dashboard(int index, String name, IconData icon) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xffb92fea),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          Text(index.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
        ],
      ),
    );
  }
}
