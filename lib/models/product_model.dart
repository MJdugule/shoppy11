import 'package:shoppy11/constants/constant.dart';

class SPProductModel {
  final dynamic image;
  final int productID;
  final String productName;
  final dynamic productCatergory;
  final dynamic productRating;
  final dynamic productReview;
  final dynamic productPrice;
  final String? productOldPrice;
  final String? productDescription;
  final String? productVendor;
  int? productQuantity;

  SPProductModel(
      {required this.productID,
      required this.image,
      required this.productCatergory,
      required this.productName,
      required this.productRating,
      required this.productReview,
      required this.productPrice,
      this.productOldPrice,
      this.productQuantity,
      required this.productDescription,
      this.productVendor});

  factory SPProductModel.fromJson(Map<String, dynamic> json) {
    return SPProductModel(
      productID: json['id'],
      image: json['images'] ?? json['image'],
      productPrice: json['price'],
      productName: json['name'],
      productCatergory: json['categories'],
      productRating: json["average_rating"],
      productDescription: json["description"],
      productReview: 0,
    );
  }

  static List<SPProductModel> get productsList => [
        SPProductModel(
            image: kPwatch,
            productName: "Leather Stripe Watch",
            productQuantity: 1,
            productRating: 4,
            productReview: "1",
            productPrice: 159.00,
            productCatergory: "Fashion",
            productID: 1,
            productDescription: 'Very nice leather watch, unisex',
            productVendor: 'Carburant'),
        SPProductModel(
            image: kPmachine,
            productName: "Running Machine",
            productRating: 3,
            productQuantity: 1,
            productReview: "1",
            productPrice: 27.00,
            productOldPrice: "485",
            productCatergory: "Electronics",
            productID: 2,
            productDescription: 'Runuing machine for all runner used',
            productVendor: 'Buydu'),
        SPProductModel(
            image: kPhelmet,
            productName: "Helmet",
            productRating: 4,
            productQuantity: 1,
            productReview: "2",
            productPrice: 159.00,
            productCatergory: "Headphones",
            productID: 3,
            productDescription:
                'Engineer helmet to protect the head, cann also be used for bicycle hiking',
            productVendor: 'Carburant'),
        SPProductModel(
            image: kPBoot,
            productName: "Shoe",
            productRating: 2,
            productQuantity: 1,
            productReview: "2",
            productPrice: 159.00,
            productCatergory: "Fashion",
            productID: 4,
            productDescription:
                'Nice blue skating boots, eye catching and affordable',
            productVendor: 'Nikk'),
        SPProductModel(
            image: kPwatch,
            productName: "Watch",
            productRating: 1,
            productQuantity: 1,
            productReview: "!",
            productPrice: 159.00,
            productCatergory: "Women",
            productID: 5,
            productDescription: 'Nice watch for you',
            productVendor: 'Frena'),
      ];

  static List<SPProductModel> get cartList => [
        SPProductModel(
            image: kPBoot,
            productName: "Shoe",
            productRating: 2,
            productQuantity: 1,
            productReview: "2",
            productPrice: 159.00,
            productCatergory: "Fashion",
            productID: 4,
            productDescription:
                'Nice blue skating boots, eye catching and affordable',
            productVendor: 'Nikk'),
        SPProductModel(
            image: kPwatch,
            productName: "Leather Stripe Watch",
            productRating: 1,
            productQuantity: 1,
            productReview: "!",
            productPrice: 159.00,
            productCatergory: "Women",
            productID: 5,
            productDescription: 'Nice watch for you',
            productVendor: 'Frena'),
      ];
}
