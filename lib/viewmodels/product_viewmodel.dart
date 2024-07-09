import 'package:flutter/foundation.dart';

import 'package:shoppy11/models/product_model.dart';
import 'package:shoppy11/repositories/shop_repository.dart';

class ProductViewModel extends ChangeNotifier {
  final List<SPProductModel> _cartList = [];
  final List<SPProductModel> _filteredList = [];
  List<SPProductModel> get cartList => _cartList;
  List<SPProductModel> _productList = [];
  final List<SPProductModel> _homeScreenList = [];
  // List<BDProductCategory> _categoryList = [];
  // List<BDProductCategory> get categoryList => _categoryList;
  List<SPProductModel> get filteredList => _filteredList;
  List<SPProductModel> get productList => _productList;
  List<SPProductModel> get homeScreenList => _homeScreenList;
  bool _loading = false;
  bool _error = false;
  bool get loading => _loading;
  bool get error => _error;

   bool _isSearching = false;
  // final List<SPProductModel> _filteredList = SPProductModel.productsList;
  String _searchText = "";
  List<String> categories = [];
  // List<SPProductModel> _productList = SPProductModel.productsList;
  // Address? _address;

  // Address? get address => _address;
  // List<SPProductModel> get filteredList => _filteredList;
  // List<SPProductModel> get productList => _productList;
  bool get isSearching => _isSearching;
  String get searchText => _searchText;

  ShopRepository shopRepository = ShopRepository();

  setLoading(bool loading, bool error) async {
    _error = error;
    _loading = loading;
    notifyListeners();
  }

    void searchListState(String searchQuery) {
    if (searchQuery.isEmpty) {
      _isSearching = false;
      _searchText = "";
      _productList = _filteredList;
      _buildSearchList();
    } else {
      _isSearching = true;
      _searchText = searchQuery;
      _buildSearchList();
    }
    notifyListeners();
  }

  List<SPProductModel> _buildSearchList() {
    if (_filteredList.isEmpty || _searchText == "") {
      return _productList = _filteredList;
    } else {
      _productList = _filteredList
          .where((products) => products.name
              .toLowerCase()
              .contains(searchText.toLowerCase()))
          .toList();
      notifyListeners();
      return _productList;
    }
  }

  void clearSearchField() {
    _searchText = "";
    _buildSearchList();
    notifyListeners();
  }



 

  void addToCart(SPProductModel product, int quantity) {
    product.availableQuantity = quantity;
    _cartList.add(product);
    notifyListeners();
  }

  void reduceQuantity(SPProductModel productModel) {
    productModel.availableQuantity = productModel.availableQuantity! - 1;
    notifyListeners();
  }

  void addQuantity(SPProductModel productModel) {
    productModel.availableQuantity = productModel.availableQuantity! + 1;
    notifyListeners();
  }

  removeFromCart(SPProductModel product) {
    _cartList.remove(product);
    // _cartList.removeWhere((element) => element.productID == product.productID);
    notifyListeners();
  }

  checkCart(SPProductModel product) {
    if (_cartList.any((element) => element.id == product.id)) {
      return true;
    } else {
      // print(product.productName);

      return false;
    }
  }

  double calculateProductsSubtotal() {
    double totalAmountPrice = 0.00;
    if (_cartList.isNotEmpty) {
      for (var product in _cartList) {
        totalAmountPrice += (double.parse(product.prices)  * product.availableQuantity!);
      }
      return double.parse(totalAmountPrice.toStringAsFixed(2));
    } else {
      return totalAmountPrice;
    }
  }

  double calculateCartTotal() {
    double totalAmountPrice = 0.00;
    if (_cartList.isNotEmpty) {
      // for(var product in cartList){
      // calculateProductsSubtotal();
      totalAmountPrice += calculateProductsSubtotal();
      // }

      return double.parse(totalAmountPrice.toStringAsFixed(2));
    } else {
      return totalAmountPrice;
    }
  }

  Future getAllProduct() async {
    setLoading(true, true);
    final response = await shopRepository.getAllProduct();
    if (response != false) {
      setLoading(false, false);
      filteredList.clear();
      homeScreenList.clear();
      List<SPProductModel> allproduct = [];

      for (var item in response["items"]) {
        SPProductModel sPProductModel = SPProductModel.fromJson(item);
        allproduct.add(sPProductModel);
        filteredList.add(sPProductModel);
        homeScreenList.add(sPProductModel);
        _productList = allproduct;
      }

      notifyListeners();
    } else {
      setLoading(false, true);
    }
    notifyListeners();
  }

}
