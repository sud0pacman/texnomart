import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/remote/response/detail/detail_responce.dart';
import 'package:texnomart/presentation/bloc/basket/basket_bloc.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:flutter/material.dart';

import '../../data/source/local/my_bookmark_helper.dart';
import '../../presentation/theme/light_colors.dart';
import 'cart.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  final BasketBloc _bloc = BasketBloc();

  @override
  void initState() {
    super.initState();
    _bloc.add(BasketLoadProductsEvents());
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
      child: BlocConsumer<BasketBloc, BasketState>(
        listener: (context, state) {
          if (state.remove != null) {
            state.basket.remove(state.remove);
            cart.removeItem();
          }
          if(state.isUpdate) {
            setState(() {
            });
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: myAppBar(),
              body: RefreshIndicator(
                color: LightColors.primary,
                onRefresh: () async {
                  _bloc.add(BasketLoadProductsEvents());
                },
                child: state.basket.isEmpty ? SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Center(
                              child: emptyField(),
                            ),
                          )
                        : Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              allDeleteSection(),
                              const SizedBox(
                                height: 20,
                              ),
                              line(),
                              const SizedBox(
                                height: 15,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: state.basket.length,
                                  separatorBuilder: (context, index) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(height: 25,),
                                        line(),
                                        const SizedBox(height: 25,),
                                      ],
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    var id = state.basket[index].id;
                                    var count =  state.basket[index].count;
                                    var isLiked = (MyBasketHelper.getDataById(id) ?? -1) == -1 ? false : true;
                                    return productItem(state.basket[index], count, isLiked, id);
                                  }
                                ),
                              ),
                            ],
                          ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget productItem(BookmarkData detail, int count, bool isLiked, int id) {
    bool isSelected = true;
    return Row(
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

              const SizedBox(height: 25,),
              
              BoldText(
                fontSize: 14,
                text: "${detail.cost.toString().formatNumber()} so'm"
              ),

              const SizedBox(height: 15,),

              discountItem(
                "${(detail.cost  ~/ 24).toString().formatNumber()} so'mdan / 24 oy",
                 Colors.grey.withAlpha(30)
              ),

              const SizedBox(height: 25,),
              counter(count,
                () {
                  _bloc.add(ClickMinusEvent(id: id, count: --count));
                  print("*********************************** click minus $count");
                },
                () {
                  _bloc.add(ClickMinusEvent(id: id, count: ++count));
                  print("*********************************** click plus $count");
                }
              )
            ],
          ),
        ),

        Expanded(
            flex: 2,
            child: SizedBox(
              height: 155,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: CustomCheckbox(
                        value: isSelected, // or false
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _bloc.add(ClickLiked(isLiked: isLiked, id: id));
                          },
                          child: Icon(
                            isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                            color: isLiked ? Colors.black : Colors.grey,
                            size: 20,
                          ),
                        ),

                        InkWell(
                          // splashColor: Colors.transparent,
                          onTap: () {
                            print("******************************* click basket delete");
                            _bloc.add(BasketDeleteProductEven(product: detail));
                          },
                          child: const Icon(
                            CupertinoIcons.trash,
                            color: Colors.grey,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        )
      ],
    );
  }

  Widget counter(int count, VoidCallback onTapMinus, VoidCallback onTapPlus) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.withAlpha(300), width: 1.2)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTapMinus,
            child: Image.asset(
              MyImages.minus,
              height: 15,
              width: 24,
              color: Colors.black,
            ),
          ),

          const SizedBox(width: 24,),

          BoldText(
            text: "$count",
            fontSize: 14,
          ),

          const SizedBox(width: 24,),

          GestureDetector(
            onTap: onTapPlus,
            child: Image.asset(
              MyImages.plus,
              color: Colors.black,
              height: 15,
              width: 24,
            ),
          ),
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
    return Image(
      image: CachedNetworkImageProvider(url),
      height: 80,
      width: MediaQuery.of(context).size.width / 4,
    );
  }


  Widget line() {
    return Container(
      height: 1.5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15,),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(1)
      ),
    );
  }


  Widget allDeleteSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Tanlanglarni \no'chirish",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),
          const NormalText(text: 'Hammasini tanlash', fontSize: 14, color: Colors.black),
          const SizedBox(width: 24,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffbd00),
              borderRadius: BorderRadius.circular(6),
            ),
            width: 22,
            height: 22,
            child:  const Icon(
              CupertinoIcons.checkmark_alt,
              size: 20.0,
              color: Colors.black,
            )
          ),
        ],
      ),
    );
  }

  ValueChanged<bool?>? myOnChanged() {
    return null;
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
          BoldText(
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
      child: BoldText(
        text: "Xarid qilishga o'ting",
        fontSize: 14,
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: LightColors.primary,
      title: Align(
        alignment: Alignment.centerLeft,
        child: NormalText(text: 'Savatcha', fontSize: 18,),
      ),
    );
  }
}
