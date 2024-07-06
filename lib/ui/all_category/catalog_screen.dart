import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/ui/products_by_category/products_by_category_screen.dart';

import '../../presentation/bloc/all_category/all_category_bloc.dart';


class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final bloc = AllCategoryBloc();

  @override
  void initState() {
    bloc.add(LoadCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<AllCategoryBloc, AllCategoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: const Color(0xFFF8BF1C),
              title: Text('Catalogs'),
            ),
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      cursorColor: Colors.orangeAccent,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon:
                              InkWell(child: Icon(Icons.keyboard_voice)),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color(0xFFF3F0F0),
                          labelText: "Sotib Olish"),
                    ),
                  ),
                ),
                state.loading == true
                    ?  Center(child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                      child: const CircularProgressIndicator(color: LightColors.primary,),
                    ))
                    : state.loading == false
                        ? Flexible(
                            child: ListView.builder(
                              itemCount: state.catalogMenu.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsByCategoryScreen(slug: state.catalogMenu[index].slug ?? "telefony", categoryName: state.catalogMenu[index].name ?? "Telefonlar")));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.network(
                                          width: 26,
                                          height: 26,
                                          state.catalogMenu[index].icon ??
                                              'null',
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          state.catalogMenu[index].name ??
                                              'null',
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              scrollDirection: Axis.vertical,
                            ),
                          )
                        : Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  // Fluttertoast.showToast(
                                  //     msg: "This is Center Short Toast",
                                  //     toastLength: Toast.LENGTH_SHORT,
                                  //     gravity: ToastGravity.CENTER,
                                  //     timeInSecForIosWeb: 1,
                                  //     backgroundColor: Colors.red,
                                  //     textColor: Colors.white,
                                  //     fontSize: 16.0);
                                },
                                child: const Center(
                                    child: Text('Show error message'))),
                          ),
              ],
            ),
          );
        },
      ),
    );
  }
}
