import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/data/api_urls.dart';

import 'package:shoppy11/models/product_model.dart';

class SPProductCardOne extends StatelessWidget {
  const SPProductCardOne({super.key, required this.productModel});
  final SPProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kGrey),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                    height: 130,
                   width: 150,
                    child: Image.network("${APIBase.developmentURL}/images/${productModel.photos[0].url}", fit: BoxFit.cover,)),
              ),
              horizontalSpaceRegular,
              verticalSpaceTiny,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceTiny,
                  Text(
                    productModel.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: kBodyMediumTextStyle
                  ),
                  Text(
                    "N${productModel.currentPrice[0].currencyPrice.entries.first.value[0]}",
                    style: kBodyMediumTextStyle.copyWith(fontSize: 16)),
                  
                  if (productModel.sellingPrice != null) ...[
                    horizontalSpaceSmall,
                    Text(
                      "N${productModel.sellingPrice}",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14, decoration: TextDecoration.lineThrough),
                    ),
                  ]
                ],
              )
            ],
          ),
        ),
        verticalSpaceRegular,
      ],
    );
  }
}

class SPQuantityButton extends StatefulWidget {
  const SPQuantityButton(
      {super.key,
      required this.onRemoveTap,
      required this.onAddTap,
      required this.quantity});
  final VoidCallback onRemoveTap;
  final VoidCallback onAddTap;
  final int quantity;

  @override
  State<SPQuantityButton> createState() => _SPQuantityButtonState();
}

class _SPQuantityButtonState extends State<SPQuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 140,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: kDarkGrey),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: widget.onRemoveTap,
              child: Container(
                  decoration: const BoxDecoration(
                      color: kLightGreyThree, shape: BoxShape.circle),
                  child: Icon(
                    Icons.remove,
                    color: kLightBlack.withOpacity(.6),
                  )),
            ),
            Text(
              widget.quantity.toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            InkWell(
              onTap: widget.onAddTap,
              child: Container(
                  decoration: const BoxDecoration(
                      color: kLightBlack, shape: BoxShape.circle),
                  child: Icon(
                    Icons.add,
                    color: kLightGrey.withOpacity(.6),
                  )),
            ),
          ],
        ));
  }
}

class BPAddToCartButton extends StatefulWidget {
  const BPAddToCartButton({super.key, required this.product, required this.onAddTap});
  final SPProductModel product;
  final VoidCallback onAddTap;

  @override
  State<BPAddToCartButton> createState() => _BPAddToCartButtonState();
}

class _BPAddToCartButtonState extends State<BPAddToCartButton> {
  int quantity = 1;

  checkCart(SPProductModel product) {
    // if (cartList
    //     .any((element) => element.productID == product.productID)) {
    //   return true;
    // } else {
    //   // print(product.productName);

    //   return false;
    // }
  }

  @override
  void initState() {
    checkCart(widget.product);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return checkCart(widget.product)
        ? Container(
            height: 45,
            color: kLightGreyThree,
            child: const Center(
              child: Text(
                "ADDED TO CART",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        : Row(
            children: [
              SPQuantityButton(
                quantity: quantity,
                onRemoveTap: () {
                  if (quantity > 1) {
                    quantity--;
                    setState(() {});
                  }
                },
                onAddTap: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
              horizontalSpaceSmall,
              Expanded(
                // width: double.infinity,
                child: SizedBox(
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: TextButton(
                        onPressed: widget.onAddTap,
                        // () {
                        //   // print("object");
                        //   setState(() {
                        //     widget.product.productQuantity = quantity;
                        //     SPProductModel.cartList.add(widget.product);
                        //     SPProductModel.cartList.clear();
                        //     checkCart(widget.product);
                        //   });
                        //   print(SPProductModel.cartList.length);
                        //   // productViewModel.addToCart(widget.product, quantity);
                        // },
                        style: TextButton.styleFrom(
                          // padding: const EdgeInsets.symmetric(
                          //     vertical: kPaddingMM, horizontal: kPaddingMM),
                          backgroundColor: kMainColorDark,
                          shape: RoundedRectangleBorder(
                              // side: BorderSide(
                              //     color:active ? buttonColor : AppColor.kGreyNeutral.shade300.withOpacity(.5),
                              //     width: kPaddingTwo,
                              //     style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.shopping_bag,
                              color: kWhite,
                            ),
                            horizontalSpaceTiny,
                            const Text(
                              "ADD TO CART",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                // decoration: BoxDecoration(boxShadow: [
                //   BoxShadow(
                //       offset: Offset(0, 4),
                //       color: kMainColorDark.withOpacity(0.25),
                //       blurRadius: 20)
                // ]),
              )
            ],
          );
  }
}

class SPCartProduct extends StatefulWidget {
  const SPCartProduct({
    super.key,
    required this.product,
    required this.onAddTap,
    required this.onRemoveTap,
    required this.onReduceTap,
  });

  final SPProductModel product;
  final VoidCallback onAddTap;
  final VoidCallback onRemoveTap;
  final VoidCallback onReduceTap;

  @override
  State<SPCartProduct> createState() => _SPCartProductState();
}

class _SPCartProductState extends State<SPCartProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.product.productImage[0],
                height: 120,
                fit: BoxFit.cover,
              ),
              horizontalSpaceSmall,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      "N${widget.product.buyingPrice}",
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 14),
                    ),
                    verticalSpaceMedium,
                  ],
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: widget.onRemoveTap,
                child: Container(
                  height: 45,
                  width: 140,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: kDeepGrey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Remove",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: kRed),
                  )),
                ),
              ),
              horizontalSpaceSmall,
              // SPQuantityButton(
              //     onRemoveTap: () {
              //       if (widget.product.productQuantity! > 1) {
              //         // productProvider.reduceQuantity(product);
              //         setState(() {
              //           widget.product.productQuantity =
              //               widget.product.productQuantity! - 1;
              //         });
              //       }
              //     },
              //     onAddTap: () {
              //       setState(() {
              //         widget.product.productQuantity =
              //             widget.product.productQuantity! + 1;
              //       });
              //     },
              //     quantity: widget.product.productQuantity!)
            ],
          )
        ],
      ),
    );
  }
}
