import 'package:flutter/material.dart';

import 'package:shoppy11/models/product_model.dart';

class ShopViewModel extends ChangeNotifier {
  bool _isSearching = false;
  final List<SPProductModel> _filteredList = [];
  String _searchText = "";
  List<String> categories = [];
  List<SPProductModel> _productList = [];

  List<SPProductModel> get filteredList => _filteredList;
  List<SPProductModel> get productList => _productList;
  bool get isSearching => _isSearching;
  String get searchText => _searchText;

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
      return _productList = _productList;
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

  // void changeCategory(int index) {
  //   if (_categoryIndexSelected == index) {
  //     _categoryIndexSelected = -1;
  //     _productList = filteredList;
  //   } else {
  //     _categoryIndexSelected = index;
  //     viewByCategory();
  //   }

  //   notifyListeners();
  // }


  
}
