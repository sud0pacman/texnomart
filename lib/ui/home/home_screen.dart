import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/response/sliders/slider_response.dart';
import 'package:texnomart/data/source/remote/response/special_categories/special_categories.dart';
import 'package:texnomart/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:texnomart/presentation/theme/shimmer_items.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';
import 'package:texnomart/presentation/theme/my_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:texnomart/ui/all_category/catalog_screen.dart';
import 'package:texnomart/ui/detail/product_detail_screen.dart';

import '../../data/source/remote/response/brends/brands_response.dart';
import '../../data/source/remote/response/xit_products/xit_products.dart';
import '../../presentation/bloc/basket/basket_bloc.dart';
import '../products_by_category/products_by_category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc _bloc = HomeBloc();
  int activeIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
    _bloc.add(HomeLoadCategoriesEvent());
    // _bloc.add(HomeLoadBrandEvent());
    _bloc.add(HomeLoadSpecialCategories());
    _bloc.add(HomeLoadXitProductsEvent());
  }

  @override
  void dispose() {
    super.dispose();

    _bloc.close();
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
            child: RefreshIndicator(
              color: LightColors.primary,
              onRefresh: () async{
                _bloc.add(HomeLoadXitProductsEvent());
              },
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: BlocConsumer<HomeBloc, HomeState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Column(
                      children: [
                        mySearch(),
                        const SizedBox(
                          height: 10,
                        ),

                        state.slidersLoading
                          ? sliderShimmer(context)
                          :slider(state.sliders?.data?.data),
                        const SizedBox(
                          height: 12,
                        ),
                        buildIndicator(
                            state.sliders?.data?.data?.length ?? activeIndex),
                        const SizedBox(
                          height: 20,
                        ),
                        // brandList(state.topBrands),
                        const SizedBox(
                          height: 15,
                        ),

                        state.categoryLoading
                        ? homeCategoryShimmerItem()
                        : categoryTitle(title: "Ommabop kategoriyalar", () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CatalogScreen()));
                          }),

                        const SizedBox(
                          height: 15,
                        ),
                        specialCategoryList(state.specialCategories, state.categoryLoading),
                        const SizedBox(
                          height: 20,
                        ),

                        state.productsLoading
                        ? homeCategoryShimmerItem()
                        : categoryTitle(title: "Xit savdo", () {}),

                        const SizedBox(
                          height: 20,
                        ),

                        xitProductList(state.xitProducts, state.basket, state.productsLoading),

                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
      )),
    );
  }

  Widget slider(List<SliderData>? data) {
    return SizedBox(
      width: double
          .infinity, // Ensures the slider takes up the full width
      child: CarouselSlider.builder(
        carouselController: _controller,
        itemCount: data?.length ?? 0,
        itemBuilder: (BuildContext context, int itemIndex,
            int pageViewIndex) =>
            sliderItem(data?[itemIndex]),
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0, // Each item fills the width
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration:
          const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex = index;
            });
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget xitProductList(XitProducts? xitProducts, List<BookmarkData> basket, bool productsLoading) {
    return SizedBox(
      height: 370,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: productsLoading ? 12 :  xitProducts?.data?.data?.length ?? 0,
        itemBuilder: (context, index) {
          var bookMarkData = MyBookmarkHelper.getDataByKey(xitProducts?.data?.data?[index].id ?? -1);
          return productsLoading
              ? xitProductShimmerItem(context)
              : xitProductItem(xitProducts?.data?.data?[index], bookMarkData?.isFavourite ?? false);
        },
        separatorBuilder: (context, index) => index+1 != xitProducts?.data?.data?.length ?  const SizedBox(width: 0,) : const SizedBox(width: 20,),
      ),
    );
  }

  Widget xitProductItem(GetXitProducts? xitProduct, bool isSave) {
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
              brand: 'Aksion',
              allCount: xitProduct?.allCount ?? 1111,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 10),
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
                  top: 0,
                  child: xitSellTitle(xitProduct?.stickers?[0].backgroundColor?.toColor() ?? Colors.red)
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
                      InkWell(
                      onTap: () {
                        setState(() {
                          _bloc.add(HomeClickLikedEvent(
                              id: xitProduct?.id ?? 1,
                              isSave: isSave,
                              name: xitProduct?.name ?? "",
                              img: xitProduct?.image ?? MyImages.myPlaceHolder,
                              cost: xitProduct?.salePrice ?? 1));
                            });
                      },
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
                          isSave ? MyImages.heart_filled : MyImages.heart,
                          height: 24,
                          width: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                        // circleButton(MyImages.heart, () {
                        //   setState(() {
                        //     _bloc.add(HomeClickLikedEvent(id: xitProduct?.id ?? 1, isSave: isSave));
                        //   });
                        // }),
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

  Widget myStar() {
    return Image.asset(
      MyImages.star,
      width: 10,
      height: 10,
      color: Colors.grey[400],
    );
  }

  Widget circleButton(String image, VoidCallback onTap) {
    return InkWell(
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

  Widget xitSellTitle(Color background) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(5)
      ),
      child: NormalText(
        text: "Xit savdo",
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }


  Widget specialCategoryList(SpecialCategories? specialCategories, bool categoryLoading) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryLoading ? 12 : (specialCategories?.data?.data?.length ?? 0),
        separatorBuilder: (context, index) => const SizedBox(width: 0,),
        itemBuilder: (context, index) =>
        categoryLoading
          ? categoryShimmerItem()
          : specialCategoryItem(specialCategories?.data?.data?[index])
      ),
    );
  }

  Widget specialCategoryItem(GetSpecialCategories? category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            List<String> myArgs = [category?.slug ?? "telefony", category?.title ?? "Telefonlar"];
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsByCategoryScreen(
                  slug: myArgs[0],
                  categoryName: myArgs[1],
                ),
              ),
            );

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ProductsByCategoryScreen(
            //     slug: category?.slug ?? "telefony", categoryName: category?.title ?? "Telefonlar"
            //   ))
            // );
          },
          child: Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.grey.withAlpha(90),
                  offset: Offset.zero
                )
              ]
            ),
            child:  SvgPicture.network(
                  category?.image ?? MyImages.myPlaceHolder
            ),
          ),
        ),

        const SizedBox(height: 12,),

        SizedBox(
          width: 80,
          child: Center(
            child: Text(
              category?.title ?? "",
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget brandList(TopBrands? topBrand) {
    var topBrands = topBrand?.data?.data;
    return Container(
      alignment: Alignment.center,
      height: 56,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topBrands?.length,
          itemBuilder: (context, index) {
            return brandItem(topBrands?[index]);
          }),
    );
  }

  Widget brandItem(TopBrandData? brandData) {
    return Container(
      margin: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(90),
            blurRadius: 4,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Image(
        image: CachedNetworkImageProvider(
          brandData?.image ?? MyImages.myPlaceHolder,
        ),
      ),
    );
  }


  Widget categoryTitle(VoidCallback onTap, {String title = "",}) {
    return  InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BoldText(
              text: title,
              fontSize: 18,
            ),

            Spacer(),

            NormalText(
              text: "hammasi",
              fontSize: 14,
            ),

            Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }


  Widget buildIndicator(int count) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: count,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.grey, // Change the active indicator color here
          dotHeight: 6.0,
          dotWidth: 6.0,
          dotColor: LightColors.grey,
          expansionFactor:
              3.0, // Increase to make the active dot more prominent,
        ),
        onDotClicked: (index) {
          _controller.animateToPage(index);
        },
      );

  Widget sliderItem(SliderData? sliderData) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.width / 15),
        image:
            NetworkImage(sliderData?.imageMobileWeb ?? MyImages.myPlaceHolder),
      ),
    );
  }

  Widget mySearch() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: LightColors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
        decoration: BoxDecoration(
          color: LightColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              MyImages.icSearch,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            NormalText(
              text: "Sotib olish",
              color: LightColors.grey,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: LightColors.primary,
      scrolledUnderElevation: 0.0,
      title: Align(
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            MyImages.title,
            fit: BoxFit.cover,
            width: 150,
          )),
    );
  }
}
