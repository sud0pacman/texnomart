import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/ui/home/home_screen.dart';
import 'package:texnomart/ui/manager/manager_screen.dart';

void main() async{
  print("********************************** home ishga tushdi");
  setup();
  runApp(const MyApp());
  // var sliders = await di<ApiService>().getDetailProduct(id: "pylesosy");
  //
  // print("****************************** menga keldi ${sliders.data?.data}");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ManagerScreen(),
    );
  }
}