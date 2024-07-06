import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/ui/basket/basket_screen.dart';
import 'package:texnomart/ui/home/home_screen.dart';

import '../../presentation/theme/ui_components.dart';
import '../all_category/catalog_screen.dart';
import '../basket/cart.dart';
import '../favourite/favourite_screen.dart';

class ManagerScreen extends StatefulWidget {
  const ManagerScreen({super.key});

  @override
  State<ManagerScreen> createState() => _ManagerScreenState();
}

class _ManagerScreenState extends State<ManagerScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  void updateBadge(BuildContext context) async {
    var data = MyBookmarkHelper.getIds();
    final cart = Provider.of<CartProvider>(context, listen: false);
    cart.updateItem(data.length);
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const CatalogScreen(),
    const BasketScreen(),
    const Placeholder(),
    const FavouriteScreen()
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => updateBadge(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        color: LightColors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        height: 64,
        child: Container(
          height: 46,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomBarIcon(Iconsax.home_1, "Bosh sahifa", 0, currentTab == 0, () {
                setState(() {
                  currentScreen = screens[0];
                  currentTab = 0;
                });
              }),
              bottomBarIcon(
                  Icons.manage_search_rounded, "Katalog", 1, currentTab == 1,
                      () {
                    setState(() {
                      currentScreen = screens[1];
                      currentTab = 1;
                    });
                  }),

              bottomBarIconWidthBadge(
                  Icons.shopping_cart, "Savatcha", 2, currentTab == 2, () {
                setState(() {
                  currentScreen = screens[2];
                  currentTab = 2;
                });
              }),

              bottomBarIcon(Iconsax.box, "Library", 3, currentTab == 3, () {
                setState(() {
                  currentScreen = screens[3];
                  currentTab = 3;
                });
              }),

              bottomBarIcon(Icons.person, "Profile", 4, currentTab == 4, () {
                setState(() {
                  currentScreen = screens[4];
                  currentTab = 4;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomBarIconWidthBadge(IconData icon, String label, int index,
      bool isActive, VoidCallback onTap) {
    return Consumer<CartProvider>(
      builder: (context, cart, child) {
        return InkWell(
          onTap: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Badge(
                backgroundColor: LightColors.primary,
                label: Text(
                  cart.itemCount.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                child: Column(
                  children: [
                    Icon(
                      icon,
                      size: 28,
                      color: isActive ? Colors.black : LightColors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: label,
                      fontSize: 11,
                      color: isActive ? Colors.black : LightColors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget bottomBarIcon(IconData icon, String label, int index, bool isActive,
      VoidCallback onTap) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 28,
            color: isActive ? Colors.black : LightColors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          NormalText(
            text: label,
            fontSize: 11,
            color: isActive ? Colors.black : LightColors.grey,
          ),
        ],
      ),
    );
  }
}
