import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/res/header.dart';
import 'package:shoppy11/res/product_items.dart';
import 'package:shoppy11/res/shop_items.dart';
import 'package:shoppy11/viewmodels/product_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
       WidgetsBinding.instance.addPostFrameCallback((_) {
      
      final productProvider = Provider.of<ProductViewModel>(context, listen: false);
      productProvider.getAllProduct();
      
     
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // final shopProvider = Provider.of<ShopViewModel>(context, listen: true);
    final productProvider =
        Provider.of<ProductViewModel>(context, listen: true);

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
               productProvider.loading
                    ? const Center(child: CircularProgressIndicator())
                    :  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 80),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: productProvider.productList.length,
                    // gridDelegate:
                    //     const SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2,
                    //   mainAxisSpacing: 16,
                    //   crossAxisSpacing: 16,
                    //   mainAxisExtent: 244.5,
                    //   //childAspectRatio: 0.60.h,
                    // ),
                    itemBuilder: (context, index) {
                      return SPProductCardOne(productModel: productProvider.productList[index]);
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
