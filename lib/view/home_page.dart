import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Translation")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 30),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "http://storage.kun.uz/source/uploads/2018fevral/images002/0202/qotil2.jpg"))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Togʻlar, togʻli oʻlkalar — yer yuzasining tevarakatrofdagi tekisliklardan yakka yoki qator koʻtarilib turgan baland joylari. T. turli yoʻnalishda, har xil masofada toʻgʻri chiziq shaklida (Ural, Katta Kavkaz, Kordilyera, Olay, Zarafshon va boshqalar) yoki yoysimon shaklda (Alp, Karpat vab.) choʻzilgan boʻladi.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Column(
            children: [
               Center(
            child: Text(
              "hello".tr(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              context.setLocale(const Locale("en"));
            },
            child: const Text("Eng"),
          ),
          FloatingActionButton(
            onPressed: () {
              context.setLocale(const Locale("ru"));
            },
            child: const Text("Rus"),
          ),
          FloatingActionButton(
            onPressed: () {
              context.setLocale(const Locale("uz"));
            },
            child: const Text("Uzb"),
          ),
            ],
          )
        ],
        
      ),
      
    );
  }
}
