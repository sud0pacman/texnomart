import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/model/my_product_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/presentation/bloc/favourite/favourite_bloc.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:texnomart/ui/basket/basket_screen.dart';

import '../../data/source/remote/response/category/products_all_category.dart';
import '../../data/source/remote/response/cheaps/cheeps_response.dart';
import '../../presentation/bloc/product_by_category/product_by_category_bloc.dart';
import '../../presentation/theme/light_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../detail/product_detail_screen.dart';

class ProductsByCategoryScreen extends StatefulWidget {
  final String slug;
  final String categoryName;

  const ProductsByCategoryScreen({super.key, required this.slug, required this.categoryName});

  @override
  State<ProductsByCategoryScreen> createState() => _ProductsByCategoryScreenState();
}

class _ProductsByCategoryScreenState extends State<ProductsByCategoryScreen> {
  final ProductByCategoryBloc _bloc = ProductByCategoryBloc();
  int selectedCheep = -1;

  @override
  void initState() {
    super.initState();

    _bloc.add(LoadCheeps(slug: widget.slug));
    _bloc.add(LoadProductByCategoryEvent(slug: widget.slug));
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: LightColors.primary, // Status bar color
        statusBarIconBrightness: Brightness.dark
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: myAppBar(widget.categoryName),
        body: BlocProvider.value(
          value: _bloc,
          child: BlocConsumer<ProductByCategoryBloc, ProductByCategoryState>(
            listener: (context, state) {},
            builder: (context, state) {
              print("********************************** product by category screen ${state.filteredProduct}");
              return xitProductList(state.filteredProduct, state.bookMarks, state.cheeps, state.loading);
            },
          ),
        ),
      ),
    );
  }



  Widget xitProductList(List<MyProductData> filteredProduct, List<BookmarkData> basket, List<Category> cheeps, bool isLoading) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        SizedBox(
          height: 36,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cheeps.length,
              itemBuilder: (context, index) => brandChip(cheeps[index], index)
          ),
        ),
        const SizedBox(height: 12,),
        filterSection(),
        const SizedBox(height: 12,),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: isLoading ? loading() :
            AlignedGridView.count(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              itemCount: filteredProduct.length,
              // crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                var product = filteredProduct[index];
                return xitProductItem(
                  product,
                  index,
                );
              },
            ),
          ),
        ),
      ],
    );
  }


  // Products? xitProduct
  Widget xitProductItem(MyProductData xitProduct, int index) {
    return InkWell(
      onTap: () async{
        var res = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              id: xitProduct.id,
              name: xitProduct.name,
              image: xitProduct.img,
              salePrice: xitProduct.cost,
              reviewsCount: xitProduct.reviewCount,
            ),
          ),
        );

        if(res != null) {
          setState(() {

          });
        }
      },
      child: SizedBox(
        // width: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(top: 10),
                      child: Image(
                        width: 135,
                        height: 140,
                        image: CachedNetworkImageProvider(xitProduct.img),
                      ),
                    )
                ),


                Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                        MyImages.green
                    )
                ),


                Positioned(
                    top: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        circleButton(
                          xitProduct.isLike ? MyImages.heart_filled : MyImages.heart,
                            () {
                              _bloc.add(CLickLikedEvent(
                              id: xitProduct.id,
                              isLike: xitProduct.isLike,
                              name: xitProduct.name,
                              cost: xitProduct.cost,
                              img: xitProduct.img,
                              index: index));
                        }
                        ),
                        const SizedBox(height: 10,),
                        circleButton(MyImages.compare, () {}),
                      ],
                    )
                )
              ],
            ),

            const SizedBox(height: 20,),

            Text(
              xitProduct.name,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),

            const SizedBox(height: 10,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myStar(),
                const SizedBox(width: 6,),
                myStar(),
                const SizedBox(width: 6,),
                myStar(),
                const SizedBox(width: 6,),
                myStar(),
                const SizedBox(width: 6,),
                myStar(),
                const SizedBox(width: 12,),
                const NormalText(text: "0", fontSize: 14,)
              ],
            ),

            const SizedBox(height: 12,),
            discountItem(
                "${((xitProduct.cost) ~/ 24).toString().formatNumber()} so'mdan / 24 oy",
                const Color(0xfff7f7f7)
            ),
            const SizedBox(height: 8,),
            discountItem(
                "${((xitProduct.cost) ~/ 12).toString().formatNumber()} so'm / 0•0•12",
                LightColors.lightPeach
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: BoldText(
                      text: " ${(xitProduct.cost).toString().formatNumber()} so'm",
                      color: Colors.black,
                      fontSize: 14,
                      height: 1,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async{
                    if (xitProduct.isSave) {
                      var res = await Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const BasketScreen()));
                      if (res != null) {
                        setState(() {});
                      }
                    } else {
                      _bloc.add(
                        CategoryClickBasketEvent(
                          id: xitProduct.id,
                          img: xitProduct.img,
                          cost: xitProduct.cost,
                          isSave: xitProduct.isSave,
                          name: xitProduct.name,
                          index: index
                        )
                      );
                    }
                  },
                  child: Container(
                    height: 36,
                    width: 42,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    margin: const EdgeInsets.only(right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffffbd00), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      xitProduct.isSave ? MyImages.checked_basket : MyImages.basket_png,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Widget circleButton(String image, VoidCallback onTap) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 30,
        width: 30,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: LightColors.white, width: 1),
            shape: BoxShape.circle,
            color: Colors.white.withAlpha(79)
        ),
        child: Image.asset(
          image,
          height: 24,
          width: 24,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget discountItem(
      String cost,
      Color background,
      ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: BoldText(
        text: cost,
        fontSize: 10,
      ),
    );
  }

  Widget myStar() {
    return Image.asset(
      MyImages.star,
      width: 10,
      height: 10,
      color: Colors.grey[400],
    );
  }




  Widget filterSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          filterItem("Ommabopligi", MyImages.exchange),
          filterItem("Filterlar", MyImages.filter),
          Image.asset(
            MyImages.menu,
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }


  Widget filterItem(
    String title  ,
    String icon
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 20,
          height: 24,
          color: Colors.black
        ),

        const SizedBox(width: 12,),

        NormalText(
          text: title,
          fontSize: 16,
        )
      ],
    );
  }

  Widget brandChip(Category category, int index) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if(selectedCheep == index) {
          selectedCheep = -1;
          _bloc.add(LoadProductByCategoryEvent(slug: widget.slug));
        }
        else {
          setState(() {
            selectedCheep = index;
            _bloc.add(LoadProductByCategoryEvent(slug: category.slug));
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 12,),
        decoration: BoxDecoration(
          color: index == selectedCheep ? LightColors.primary.withAlpha(20) : Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(18),
        ),
        child: index == selectedCheep
        ? Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(alignment: Alignment.center, child: Icon(CupertinoIcons.checkmark_alt, size: 18, color: Colors.black,)),
            const SizedBox(width: 8,),
            NormalText(
              text: category.name,
            )
          ],
        )
        :NormalText(
          text: category.name,
        ),
      ),
    );
  }

  Widget loading() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        color: LightColors.primary,
      ),
    );
  }
}
