import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/models/product_model.dart';
import 'package:shoppy11/res/header.dart';
import 'package:shoppy11/res/product_items.dart';
import 'package:shoppy11/res/shop_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SPProductModel> product = SPProductModel.productsList;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // final shopProvider = Provider.of<ShopViewModel>(context, listen: true);

    return Scaffold(
        body: Padding(
      padding: safeAreaPadding,
      child: Column(
        children: [
          const SizedBox(
              height: 56,
              child: Center(child: HeaderTextWidget(heading: "Shoppy"))),
          verticalSpaceTiny,
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                verticalSpaceRegular,
                const SPCarouselWidget(),
                verticalSpaceRegular,
                GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 80),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: product.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 244.5,
                      //childAspectRatio: 0.60.h,
                    ),
                    itemBuilder: (context, index) {
                      return SPProductCardOne(productModel: product[index]);
                    }),
                verticalSpaceMedium
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class HomeSectionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const HomeSectionWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 17),
              ),
              InkWell(
                  onTap: onTap,
                  child: Text(
                    "See all",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: kMainColorDark),
                  ))
            ],
          ),
          const Divider(
            color: kMainColorDark,
            thickness: 3,
          )
        ],
      ),
    );
  }
}
