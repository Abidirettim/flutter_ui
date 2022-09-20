import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Facilities extends StatelessWidget {
  const Facilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Tesislerim"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text("Yeni Tesis"),
                      ),
                      customWidthSizedBox(),
                      ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.restore_from_trash),
                        label: const Text("Seçilenleri Sil"),
                      ),
                      customWidthSizedBox(),
                      /*const TextField(
                        decoration: InputDecoration(hintText: "bekir"),
                      ),*/
                    ],
                  ),
                  DataTable(columns: [
                    DataColumn(
                        label: Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text("Oluşturma Tarihi")
                      ],
                    )),
                    const DataColumn(label: Text("Tesis Adı")),
                  ], rows: [
                    DataRow(
                      selected: true,
                      cells: [
                        DataCell(Container(
                          width: 150,
                          child: Row(
                            children: const [
                              Icon(Icons.timer_outlined, size: 20),
                              Text("22-02-2000 22:22:22")
                            ],
                          ),
                        )),
                        DataCell(Text("Tesis 1")),
                      ],
                    ),
                  ])
                ]),
              ),
            ],
          ),
        ));
  }

  SizedBox customHeightSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }

  SizedBox customWidthSizedBox() {
    return const SizedBox(
      width: 20,
    );
  }
}
