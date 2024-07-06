import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';

import '../../data/source/remote/response/category/products_all_category.dart';
import '../../data/source/remote/response/top_categories/top_categories.dart';
import '../../presentation/bloc/product_by_category/product_by_category_bloc.dart';
import '../../presentation/theme/light_colors.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();

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
        appBar: myAppBar(),
        body: BlocProvider.value(
          value: _bloc,
          child: BlocConsumer<ProductByCategoryBloc, ProductByCategoryState>(
            listener: (context, state) {},
            builder: (context, state) {
              print("********************************** ${state.filteredProduct}");
              return state.loading == true
                ? loading()
                : xitProductList(state.filteredProduct, state.likes);
            },
          ),
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


  Widget xitProductList(ProductAllCategory? filteredProduct, List<int> likes) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        SizedBox(
          height: 32,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filteredProduct?.data?.brands?.length,
              itemBuilder: (context, index) => brandChip(filteredProduct?.data?.brands?[index])
          ),
        ),
        const SizedBox(height: 12,),
        filterSection(),
        const SizedBox(height: 12,),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AlignedGridView.count(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              // crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                var product = filteredProduct?.data?.products?[index];
                return xitProductItem(
                  product,
                  likes.contains(product?.id ?? -1),
                );
              },
            ),
          ),
        ),
      ],
    );
  }


  // Products? xitProduct
  Widget xitProductItem(Products? xitProduct, bool isLike) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              id: xitProduct?.id ?? -1,
              name: xitProduct?.name ?? "Null",
              image: xitProduct?.image ?? MyImages.myPlaceHolder,
              salePrice: xitProduct?.salePrice ?? 1,
              reviewsCount: xitProduct?.reviewsCount,
            ),
          ),
        );
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
                        image: CachedNetworkImageProvider(xitProduct?.image ?? MyImages.myPlaceHolder),
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
                          isLike ? MyImages.heart_filled : MyImages.heart,
                            () {
                              _bloc.add(CLickLikedEvent(id: xitProduct?.id ?? -1, isLike: isLike));
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
              xitProduct?.name ?? "Name",
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
                "${((xitProduct?.salePrice ?? 0) ~/ 24).toString().formatNumber()} so'mdan / 24 oy",
                const Color(0xfff7f7f7)
            ),
            const SizedBox(height: 8,),
            discountItem(
                "${((xitProduct?.salePrice ?? 0) ~/ 12).toString().formatNumber()} so'm / 0•0•12",
                LightColors.lightPeach
            ),
            const SizedBox(height: 20,),
            BoldText(
              text: " ${(xitProduct?.salePrice ?? 0).toString().formatNumber()} so'm",
              fontSize: 16,
            ),
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
      padding: EdgeInsets.symmetric(horizontal: 15),
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

  Widget brandChip(Brand? productBrand) {
    return Container(
      // constraints: const BoxConstraints(
      //   minWidth: 100,
      //   minHeight: 20,
      // ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: LightColors.primary2,
        borderRadius: BorderRadius.circular(18),
      ),
      child: NormalText(
        text: productBrand?.name ?? "NULL",
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: LightColors.primary,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            // splashColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 24,
            ),
          ),

          const SizedBox(width: 32,),

          NormalText(
            text: widget.categoryName,
            fontSize: 18,
          )
        ],
      ),
    );
  }
}
