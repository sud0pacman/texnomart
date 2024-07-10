import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/remote/response/inner_category_cheeps/inner_category_cheeps.dart';
import 'package:texnomart/data/source/remote/response/inner_category_prdoducts/inner_category_prdoducts.dart';
import 'package:texnomart/presentation/bloc/inner_category_product/inner_category_products_bloc.dart';

import '../../data/source/local/my_bookmark_helper.dart';
import '../../presentation/theme/light_colors.dart';
import '../../presentation/theme/my_images.dart';
import '../../presentation/theme/ui_components.dart';
import '../detail/product_detail_screen.dart';

class InnerCategoryProductsScreen extends StatefulWidget {
  final String slug;
  final String categoryName;
  const InnerCategoryProductsScreen({super.key, required this.slug, required this.categoryName});

  @override
  State<InnerCategoryProductsScreen> createState() => _InnerCategoryProductsScreenState();
}

class _InnerCategoryProductsScreenState extends State<InnerCategoryProductsScreen> {

  final InnerCategoryProductsBloc _bloc = InnerCategoryProductsBloc();

  @override
  void initState() {
    super.initState();

    _bloc.add(LoadDataEvent(slug: widget.slug));
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
          child: BlocConsumer<InnerCategoryProductsBloc, InnerCategoryProductsState>(
            listener: (context, state) {},
            builder: (context, state) {
              print("********************************** product by category screen ${state.products}");
              return state.isLoading == true
                  ? loading()
                  : xitProductList(state.products, state.likes, state.categories);
            },
          ),
        ),
      ),
    );;
  }


  Widget xitProductList(List<Product> products, List<BookmarkData> basket, List<Parent> cheeps) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        SizedBox(
          height: 32,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cheeps.length,
              itemBuilder: (context, index) => brandChip(cheeps[index])
          ),
        ),
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
              itemCount: products.length,
              // crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                var product = products[index];
                var isLike = MyBookmarkHelper.getDataByKey(product.id ?? -1) == null ? false : true;
                return xitProductItem(
                  product,
                  isLike,
                );
              },
            ),
          ),
        ),
      ],
    );
  }


  // Products? xitProduct
  Widget xitProductItem(Product product, bool isLiked) {
    return InkWell(
      onTap: () async{
        var res = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              id: product.id ?? -1,
              name: product.name ?? "Null",
              image: product.image ?? MyImages.myPlaceHolder,
              salePrice: product.salePrice ?? 1,
              reviewsCount: product.reviewsCount,
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
                        image: CachedNetworkImageProvider(product.image ?? MyImages.myPlaceHolder),
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
                            isLiked ? MyImages.heart_filled : MyImages.heart,
                                () {
                              _bloc.add(CLickLikedEvent(id: product.id ?? -1, isLike: isLiked, name: product.name ?? "", cost: product.salePrice ?? 1, img: product.image ?? MyImages.myPlaceHolder));
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
              product.name ?? "Name",
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
                "${((product.salePrice ?? 0) ~/ 24).toString().formatNumber()} so'mdan / 24 oy",
                const Color(0xfff7f7f7)
            ),
            const SizedBox(height: 8,),
            discountItem(
                "${((product.salePrice ?? 0) ~/ 12).toString().formatNumber()} so'm / 0•0•12",
                LightColors.lightPeach
            ),
            const SizedBox(height: 20,),
            BoldText(
              text: " ${(product.salePrice ?? 0).toString().formatNumber()} so'm",
              fontSize: 16,
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
        padding: const EdgeInsets.all(5),
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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

  Widget brandChip(Parent category) {
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
        text: category.name,
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
              Navigator.pop(context, true);
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
