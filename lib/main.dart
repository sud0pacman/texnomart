import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/ui/basket/cart.dart';
import 'package:texnomart/ui/home/home_screen.dart';
import 'package:texnomart/ui/manager/manager_screen.dart';

import 'data/source/local/my_bookmark_helper.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  print("********************************** home ishga tushdi");
  setup();
  await MyBasketHelper.init();
  await MyBookmarkHelper.init();

  // print("****************************** ids ${MyBookmarkHelper.getIds()[0].count}");
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
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