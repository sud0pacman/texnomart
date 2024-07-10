
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';

Widget sliderShimmer(BuildContext context) {
  return Container(
    height: 200,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.4),
        highlightColor: LightColors.primary2,
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
        )
    ),
  );
}

Widget categoryShimmerItem() {
  return Container(
    height: 120,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: LightColors.shimmerColor,
            ),
          ),
        ),

        const SizedBox(height: 8,),

        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: LightColors.shimmerColor,
            ),
          ),
        ),
      ],
    ),
  );
}


Widget xitProductShimmerItem(BuildContext context) {
  return Container(
    width: 150,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 190,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: LightColors.shimmerColor,
            ),
          ),
        ),

        const SizedBox(height: 12,),

        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 15,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),

        const SizedBox(height: 12,),

        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 15,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),

        const SizedBox(height: 12,),

        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 25,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),

        const SizedBox(height: 12,),

        Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 10,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget homeCategoryShimmerItem() {
  return Row(
    children: [
      const SizedBox(height: 15,),

      Expanded(
        flex: 5,
        child: Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 22,
            width: 75,
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),
      ),

      const SizedBox(height: 12,),

      Expanded(
        flex: 2,
        child: Shimmer.fromColors(
          baseColor: LightColors.shimmerColor,
          highlightColor: LightColors.shimmerHighColor,
          child: Container(
            height: 22,
            width: 75,
            margin: EdgeInsets.only(left: 8, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: LightColors.shimmerColor,
            ),
          ),
        ),
      ),

      const SizedBox(height: 15,),
    ],
  );
}

Widget shimmerCheep() {
  return Container(
    height: 32,
    width: 132,
    margin: const EdgeInsets.symmetric(horizontal: 12),
    child: Shimmer.fromColors(
      baseColor: LightColors.shimmerColor,
      highlightColor: LightColors.shimmerHighColor,
      child: Container(
        height: 32,
        width: 132,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(18)
        ),
      ),
    ),
  );
}
