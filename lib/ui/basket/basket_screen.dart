import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/presentation/bloc/basket/basket_bloc.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';

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
          if (state.isUpdate) {
            setState(() {

            });
          }

          if(state.deleteCount > 0) {
            for(var i = 1; i <= state.deleteCount; ++i) {
              cart.removeItem();
            }
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: myAppBar('Savatcha'),
              body: RefreshIndicator(
                  color: LightColors.primary,
                  onRefresh: () async {
                    _bloc.add(BasketLoadProductsEvents());
                  },
                  child: state.basket.isEmpty
                      ? SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Center(
                            child: emptyField(),
                          ),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              allDeleteSection(state.isAllSelected),
                              const SizedBox(height: 20),
                              line(),
                              const SizedBox(height: 15),
                              ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.basket.length,
                                separatorBuilder: (context, index) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(height: 25),
                                      line(),
                                      const SizedBox(height: 25),
                                    ],
                                  );
                                },
                                itemBuilder: (context, index) {
                                  var product = state.basket[index];
                                  return productItem(product, product.count,
                                      product.isFavourite, product.id);
                                },
                              ),

                              const SizedBox(height: 20,),
                              line(),
                              const SizedBox(height: 20,),
                              totalPrice(state.totalPrice, state.totalCount),
                              const SizedBox(height: 15,),
                              paymentProcessing(state.totalPrice),
                              const SizedBox(height: 25,),
                            ],
                          ),
                        )),
            ),
          );
        },
      ),
    );
  }


  Widget paymentProcessing(int totalPrice) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.3), width: 1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Container(
            height: 42,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(40),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NormalText(
                  text: "Muddatli to'lo'v ",
                  color: Colors.black87,
                  fontSize: 14,
                ),

                BoldText(
                  text: "${(totalPrice ~/ 24).toString().formatNumber()} so'm dan",
                  color: Colors.black87,
                  fontSize: 15,
                ),

                BoldText(
                  text: " / 24 oy",
                  color: Colors.black87,
                  fontSize: 13,
                ),
              ],
            ),
          ),

          const SizedBox(height: 15,),

          myButton(
            "Muddatli to'lo'vni rasmiylashtirish",
            background: totalPrice != 0 ? Colors.black : Colors.grey,
            textSize: 15,
            textColor: Colors.white
          )
        ],
      ),
    );
  }

  Widget totalPrice(int totalPrice, int totalProductCount) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(.3), width: 1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          const BoldText(text: "Jami"),
          const SizedBox(height: 30,),
          totalItem("${totalProductCount.toString().formatNumber()} ta mahsulot", "${totalPrice.toString().formatNumber()} so'm", 16),
          const SizedBox(height: 35,),
          totalItem("To'lash uchun", "${totalPrice.toString().formatNumber()} so'm", 18),
          const SizedBox(height: 35,),
          myButton(
            "Haridni rasmiylashtirish",
            height: 42,
            background: totalPrice != 0 ? LightColors.primary : LightColors.primary.withAlpha(90),
            textColor: totalPrice != 0 ? Colors.black : Colors.black.withAlpha(90),
          ),
        ],
      ),
    );
  }

  Widget totalItem(String title, String res, double textSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NormalText(text: title, color: Colors.black87, fontSize: textSize,),
        BoldText(text: res, color: Colors.black, fontSize: textSize,),
      ],
    );
  }

  Widget productItem(BookmarkData detail, int count, bool isLiked, int id) {
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
                          _bloc.add(ClickSelect(isSelected: detail.isSelect, id: detail.id));
                        });
                      },
                      child: CustomCheckbox(
                        value: detail.isSelect, // or false
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
      height: 1,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15,),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(1)
      ),
    );
  }


  Widget allDeleteSection(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              deleteSelected();
            },
            child: const Text(
              "Tanlanglarni \no'chirish",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const Spacer(),
          const NormalText(text: 'Hammasini tanlash', fontSize: 14, color: Colors.black),
          const SizedBox(width: 24,),
          InkWell(
            onTap: () {
              _bloc.add(ClickAllSelect(isSelected: isSelected));
            },
            child: CustomCheckbox(
              value: isSelected,
            ),
          )
        ],
      ),
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

  Future deleteSelected() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Tanlanganlarni o\'chiris'),
          // content: Text('Are you sure you want to delete the selected items?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const BoldText(
                text: "Bekrol qilish",
                color: Colors.blueAccent,
                fontSize: 14,
              ),
            ),

            TextButton(
              onPressed: () {
                _bloc.add(DeleteAllEvent());
                Navigator.pop(context);
              },
              child: const BoldText(
                text: "O'chirish",
                color: Colors.red,
                fontSize: 14,
              ),
            ),
          ],
        );
      },
    );
  }
}