import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:texnomart/ui/favourite/favourite_screen.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.primary2,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
              child: Center(
                child: NormalText(
                  text: "Xarid qilish, buyurmalrni kuzatish \n va bo'lib-bo'lib to'lash uchun tizimiga kiring",
                  fontSize: 12,
                  color: Colors.black,
                  height: 1,
                  align: TextAlign.center,
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xfffdc202)),
            child: myButton("Kirish", height: 44, textColor: Colors.black87)
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                color:  const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.percent),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Aksiya',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded, size: 20)
                        ],
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FavouriteScreen()));
                        },
                        child:  Row(
                          children: [
                            const Icon(Icons.favorite_outline_rounded),
                            const SizedBox(width: 8),
                            const Expanded(
                              child: Text(
                                'Sevimli',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(
                                minWidth: 20,
                                minHeight: 25,
                              ),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                              decoration: BoxDecoration(
                                color: LightColors.primary.withOpacity(.4),
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: NormalText(
                                text: "${MyBookmarkHelper.getIds().where((e) => e.isFavourite == true).toList().length}",
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.compare),
                          SizedBox(width: 8),
                          Text(
                            'Taqqoslash',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.language),
                          SizedBox(width: 8),
                          Text(
                            'Ilova tili',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.shop),
                          SizedBox(width: 8),
                          Text(
                            'Bizning do\'konlarimiz',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded, size: 20)
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.message),
                          SizedBox(width: 8),
                          Text(
                            'Qo\'llab quvvatlash',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.info),
                          SizedBox(width: 8),
                          Text(
                            'Malumot',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.phone_android),
                          SizedBox(width: 8),
                          Text(
                            'Ilova haqida',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.notifications_none),
                          SizedBox(width: 8),
                          Text(
                            'Bildirishnoma sozlamalari',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Ilova veriyasi 1.0.0'),
          ),
          const Spacer()
        ],
      )),
    );
  }
}
