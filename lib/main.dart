import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:transl/view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [Locale("uz"), Locale("ru"), Locale("en")],
    path: "lib/core/lang",
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
