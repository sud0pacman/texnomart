import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';

import '../../presentation/bloc/detail/detail_bloc.dart';
import '../../presentation/theme/light_colors.dart';
import '../basket/cart.dart';

class ProductDetailScreen extends StatefulWidget {
  final int id;
  final String name;
  final String image;
  final int salePrice;
  final int? reviewsCount;

  const ProductDetailScreen({
    super.key,   required this.id, required this.name, required this.image, required this.salePrice, required this.reviewsCount,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late DetailBloc bloc;

  @override
  void initState() {
    bloc = DetailBloc();
    bloc.add(DetailGetProduct(id: widget.id.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return BlocProvider.value(
      value:  bloc,
      child: BlocConsumer<DetailBloc, DetailState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    print("************************************* detail $state");
    return Scaffold(
        appBar: _buildAppBar(state.isLiked),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: SizedBox(
                    height: 170,
                    child: Image.network(widget.image)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildAvailability(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildBasketContainer(state.isSaved,
                    widget.salePrice.toString().formatNumber(), cart)
              ),
              _buildInfoRow("Do'konlarda mavjudligi"),
              _buildCustomThicknessDivider(),
              _buildInfoRow("Xususiyatlari"),
              _buildAboutProductRow('Brend', 'Aksion'),
              _buildAboutProductRow('Unumdorligi', '0.5 kg/daq'),
              _buildAboutProductRow('Quvvati', '220 Vt'),
              _buildAllFeatures(),
              _buildCommentsRow(widget.reviewsCount),
              _buildCustomDivider(),
              _buildBehaviourSupports(
                  Iconsax.box, 'Qanday qilib olish usullari:'),
              _buildCustomThicknessDivider(),
              _buildBehaviourSupports(Iconsax.card, "Mahsulot to'lov usuli:"),
              _buildCustomThicknessDivider(),
              _buildBehaviourSupports(Iconsax.security, 'Kafolat'),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      );
  },
),
    );
  }

  Widget _buildAddBasket(bool isAdded) {
    return Card(
      elevation: 10,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          child: InkWell(
            onTap: () {
              // add to database
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                color: !isAdded ? LightColors.primary : LightColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Center(
                  child: Text(
                    isAdded ? "Savatchada" : "Savatchaga qo'shish",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvailability() {
    return Row(
      children: [
        const Text(
          "Mavjud",
          style:
              TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text("Kod: ${widget.id}"),
      ],
    );
  }

  Widget _buildBasketContainer(bool isAdded, String? price, CartProvider cart) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 2, color: LightColors.primary2)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${price?.toString() ?? ''}  so\'m',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                if(!isAdded) {
                  bloc.add(AddToBookMarkEvent(key: widget.id, img: widget.image, name: widget.name, cost: widget.salePrice));
                  cart.addItem();
                }
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color:
                      !isAdded ? const Color(0xFFffc300) : LightColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Center(
                    child: Text(
                      isAdded ? "Savatchada" : "Savatchaga qo'shish",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: LightColors.grey,
              size: 18,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAboutProductRow(String title, String power) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Text(
              power,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAllFeatures() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // add to database
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            color: LightColors.primary2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Center(
              child: Text(
                "Barcha xususiyatlar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommentsRow(int? reviews) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              'Sharhlar  ${reviews ?? 0}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(
              Iconsax.star5,
              color: LightColors.grey,
              size: 18,
            ),
            const Icon(
              Iconsax.star5,
              color: LightColors.grey,
              size: 18,
            ),
            const Icon(
              Iconsax.star5,
              color: LightColors.grey,
              size: 18,
            ),
            const Icon(
              Iconsax.star5,
              color: LightColors.grey,
              size: 18,
            ),
            const Icon(
              Iconsax.star5,
              color: LightColors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 24,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: LightColors.grey,
              size: 18,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCustomDivider() {
    return const Divider(
      thickness: 8,
      color: LightColors.primary2,
    );
  }

  Widget _buildCustomThicknessDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 1,
        color: LightColors.primary2,
      ),
    );
  }

  Widget _buildBehaviourSupports(IconData icon, String title) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: LightColors.grey,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(
    bool isLiked,
  ) {
    return AppBar(
      backgroundColor: LightColors.primary,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded)),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.balance)),
        IconButton(onPressed: () {
          bloc.add(AddToBasketEvent(key: widget.id, isLiked: isLiked));
        }, icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border)),
      ],
    );
  }

  Container colors_item() {
    return Container(
      width: 70,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}
