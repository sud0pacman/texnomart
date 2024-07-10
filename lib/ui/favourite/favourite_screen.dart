import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/presentation/bloc/favourite/favourite_bloc.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:texnomart/ui/basket/basket_screen.dart';

import '../../presentation/theme/light_colors.dart';
import '../../presentation/theme/my_images.dart';
import '../basket/cart.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final FavouriteBloc _bloc = FavouriteBloc();

  @override
  void initState() {
    super.initState();

    _bloc.add(LoadDataEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: LightColors.primary, // Status bar color
      statusBarIconBrightness: Brightness.dark,
    ));
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<FavouriteBloc, FavouriteState>(
        listener: (context, state) {
          if(state.isUpdate) {
            setState(() {
            });
          }
        },
        builder: (context, state) {
          print("**************************** favourite screen $state");
          return SafeArea(
            child: Scaffold(
              appBar: myAppBar("Sevimlilar"),
              backgroundColor: Colors.white,
              body: RefreshIndicator(
                color: LightColors.primary,
                onRefresh: () async{
                  _bloc.add(LoadDataEvent());
                },
                child: state.bookmarks.isEmpty && state.isLoading
                ? loading()
                : state.isLoading == false && state.bookmarks.isEmpty
                ? emptyField()
                : Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var id = state.bookmarks[index].id;
                              var isLiked = state.bookmarks[index].isFavourite;
                              var isSaved = state.bookmarks[index].isSave;
                              print("*********************************** favourite screen products ${state.bookmarks.length}");
                              return productItem(state.bookmarks[index], isLiked, isSaved, id, cart);
                            },
                            itemCount: state.bookmarks.length
                        )
                    ),
                  ],
                ),
              )
            ),
          );
        },
      ),
    );
  }



  Widget productItem(BookmarkData detail, bool isLiked, bool isSaved, int id, CartProvider cart) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: image(detail.img)
              ),

              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    const SizedBox(height: 3,),

                    Text(
                      detail.name,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          color: Colors.black.withAlpha(200),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          height: 1.3
                      ),
                    ),

                    const SizedBox(height: 15,),

                    discountItem(
                        "${(detail.cost  ~/ 2).toString().formatNumber()} so'mdan / 24 oy",
                        Colors.grey.withAlpha(30)
                    ),

                    const SizedBox(height: 8,),
                    discountItem(
                        "${((detail.cost) ~/ 12).toString().formatNumber()} so'm / 0•0•12",
                        LightColors.lightPeach
                    ),

                    const SizedBox(height: 20,),

                    BoldText(
                        fontSize: 16,
                        text: "${detail.cost.toString().formatNumber()} so'm"
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 155,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          _bloc.add(ClickLikeEvent(isLiked: isLiked, id: id, name: detail.name, img: detail.img, cost: detail.cost));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withAlpha(300), width: 1.5),
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                             isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),

                      const Spacer(),

                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          if(!isSaved) {
                            _bloc.add(ClickBasketEvent(
                              id: id,
                              isSaved: isSaved,
                              img: detail.img,
                              cost: detail.cost,
                              name: detail.name,
                              isLiked: isLiked
                            ));
                            cart.addItem();
                          } else {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BasketScreen())
                            );
                          }
                        },
                        child: Container(
                          height: 36,
                          width: 56,
                          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffffbd00), width: 2),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                            isSaved ? MyImages.checked_basket : MyImages.basket_png,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 20,),
          line(),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }


  Widget discountItem(
      String cost,
      Color background,
      ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12)
      ),
      child: BoldText(
        text: cost,
        fontSize: 10,
      ),
    );
  }

  Widget image(String url) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        image: CachedNetworkImageProvider(url),
        height: 90,
        width: MediaQuery.of(context).size.width / 4,
      ),
    );
  }

  Widget loading() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(color: LightColors.primary,),
    );
  }

  Widget emptyField() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: MediaQuery.of(context).size.width /2,),
          SvgPicture.asset(
            MyImages.basket,
            width: 66,
            height: 66,
          ),
          const SizedBox(height: 25,),
          const BoldText(
            text: "Savatda hali hech narsa yo'q",
            fontSize: 18,
          ),
          const SizedBox(height: 42,),
          goShopping()
        ],
      ),
    );
  }

  Widget goShopping() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: LightColors.primary,
      ),
      child: const BoldText(
        text: "Xarid qilishga o'ting",
        fontSize: 14,
      ),
    );
  }

  Widget line() {
    return Container(
      height: 1.5,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15,),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(1)
      ),
    );
  }
}
