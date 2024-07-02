import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/models/product_model.dart';
import 'package:shoppy11/res/flat_button.dart';
import 'package:shoppy11/res/header.dart';
import 'package:shoppy11/res/product_items.dart';
import 'package:shoppy11/res/shop_items.dart';
import 'package:shoppy11/view/cart/check_out_success.dart';
import 'package:shoppy11/view/dashboard/dashboard.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<SPProductModel> cartList = SPProductModel.cartList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: safeAreaPadding,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderTextWidget(heading: "Check Out"),
                  // horizontalSpaceLarge
                ],
              ),
            ),
            Expanded(
                child: SPProductModel.cartList.isNotEmpty
                    ? ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Padding(
                                padding: EdgeInsets.only(top: 10),
                              );
                            },
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: SPProductModel.cartList.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              // final product = cartList[index];
                              return SPCartProduct(
                                product: SPProductModel.cartList[index],
                                onReduceTap: () {},
                                onAddTap: () {},
                                onRemoveTap: () {
                                  setState(() {
                                    SPProductModel.cartList.removeAt(index);
                                  });
                                },
                              );
                            },
                          ),

                          verticalSpaceMedium,
                          // BDTotalTile(
                          //     title: 'Cart Total:',
                          //     price: productProvider
                          //         .calculateCartTotal()
                          //         .toStringAsFixed(2)),
                          const SPTotalTile(
                              title: 'Shipping cost:', price: "1000"),
                          verticalSpaceSmall,
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            minVerticalPadding: 0,
                            dense: true,
                            title: Text(
                              'Total',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontSize: 16),
                            ),
                            // trailing: Text(
                            //   'N${productProvider.calculateCartTotal().toStringAsFixed(2)}',
                            //   style: Theme.of(context)
                            //       .textTheme
                            //       .bodySmall
                            //       ?.copyWith(fontSize: 19),
                            // ),
                          ),
                          SPFlatButton(
                            pressState: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const CheckOutSuccess();
                              }));
                            },
                            active: true,
                            isLoading: false,
                            textColor: kWhite,
                            buttonColor: kMainColorDark,
                            text: "Check Out",
                          )
                        ],
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your cart is currently empty",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 17),
                            ),
                            verticalSpaceRegular,
                            SizedBox(
                              width: 250,
                              child: SPFlatButton(
                                pressState: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Dashboard(currentIndex: 0),
                                    ),
                                  );
                                },
                                active: true,
                                isLoading: false,
                                textColor: kWhite,
                                buttonColor: kDeepGrey,
                                text: "RETURN TO SHOP",
                              ),
                            )
                          ],
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
