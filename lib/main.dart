import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/ui/basket/cart.dart';
import 'package:texnomart/ui/favourite/favourite_screen.dart';
import 'package:texnomart/ui/manager/manager_screen.dart';

import 'data/source/local/my_bookmark_helper.dart';
import 'data/source/remote/service/api_service.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  print("********************************** home ishga tushdi");
  setup();
  await MyBookmarkHelper.init();

  var products = await di<ApiService>().getSelectedCategory(slug: "smartfony");

  print("*************************************** home cheeps ${products.data?.products?.length}");

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
        colorScheme: ColorScheme.fromSeed(seedColor: LightColors.primary),
        useMaterial3: true,
      ),
      home: const ManagerScreen(),
    );
  }
}