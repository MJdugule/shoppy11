import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/models/product_model.dart';
import 'package:shoppy11/res/header.dart';
import 'package:shoppy11/res/product_items.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.productModel});

  final SPProductModel productModel;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 55, right: 16, left: 16, bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // BDBackButton(onPress: () {
                  //   //  searchViewModel.clearSearchField();
                  //   Navigator.pop(context);
                  // }),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: kWhite,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                        )
                        // SvgPicture.asset(
                        //   "assets/icons/arrow_right.svg",
                        //   color: kWhite,
                        //   height: 12,
                        // ),
                        ),
                  ),
                  const HeaderTextWidget(heading: "Product Details"),
                  horizontalSpaceLarge
                ],
              ),
            ),
            verticalSpaceRegular,
            // ClipRRect(
            //     borderRadius: BorderRadius.circular(10),
            //     child: Image.asset(
            //       widget.productModel.image,
            //       fit: BoxFit.contain,
            //       width: MediaQuery.of(context).size.width,
            //       height: 250,
            //     )),
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.name,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 20),
                  ),
                  verticalSpaceSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$${widget.productModel.buyingPrice}",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 17),
                      ),
                      // if (widget.productModel.productOldPrice != null) ...[
                      //   horizontalSpaceSmall,
                      //   Text(
                      //     "\$${widget.productModel.productOldPrice}",
                      //     style: Theme.of(context)
                      //         .textTheme
                      //         .labelSmall!
                      //         .copyWith(
                      //             fontSize: 15,
                      //             decoration: TextDecoration.lineThrough),
                      //   ),
                      // ]
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      verticalSpaceSmall,
                      Text(
                        "(${widget.productModel.featuredReviews} Reviews)",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  BPAddToCartButton(
                    onAddTap: (){
                      setState(() {
                        
                        // cartList.add(widget.productModel);
                        // print(widget.productModel);
                      });
                      
                    },
                    product: widget.productModel,
                  ),
                  verticalSpaceMedium,
                ],
              ),
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
