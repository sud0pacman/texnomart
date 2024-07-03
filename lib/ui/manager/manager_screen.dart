import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:texnomart/ui/home/home_screen.dart';
import 'package:texnomart/ui/products_by_category/products_by_category_screen.dart';

class ManagerScreen extends StatefulWidget {
  const ManagerScreen({super.key});

  @override
  State<ManagerScreen> createState() => _ManagerScreenState();
}

class _ManagerScreenState extends State<ManagerScreen> {
  int _selectedIndex = 0;

  var screens = [
    const HomeScreen(),
    // const ProductsByCategoryScreen(slug: "smartfony", categoryName: "Smartfonlar")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottomNavigation(),
      body: screens[0],
    );
  }


  Widget myBottomNavigation() {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      shape: const CircularNotchedRectangle(),
      height: 60,
      color: LightColors.white,
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          bottomBarIcon(Iconsax.home_1, "Bosh sahifa", 0, _selectedIndex == 0, () {
            _onItemTapped(0);
          }),
          bottomBarIcon(Icons.manage_search_rounded, "Katalog", 1, _selectedIndex == 1,
                  () {
                _onItemTapped(1);
              }),
          bottomBarIcon(Icons.shopping_cart, "Library", 2, _selectedIndex == 2, () {
            _onItemTapped(2);
          }),
          bottomBarIcon(Iconsax.box, "Library", 3, _selectedIndex == 3, () {
            _onItemTapped(2);
          }),
          bottomBarIcon(Icons.person, "Profile", 4, _selectedIndex == 4, () {
            _onItemTapped(3);
          }),
        ],
      ),
    );
  }

  Widget bottomBarIcon(IconData icon, String label, int index, bool isActive,
      VoidCallback onTap) {
    return InkWell(
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
