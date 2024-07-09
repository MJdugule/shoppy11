import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shoppy11/data/api_service.dart';
import 'package:shoppy11/data/api_urls.dart';


class NetworkService {
  ApiService apiService = ApiService();

  //Store
  Future getAllShopProduct() async {
    var response = await apiService.apiInterceptor(() async {
      // List<String> authKeys = await AuthenticationProvider().getUserAuthKeys();
      return await http.get(Uri.parse(APIPathHelper().getAllShopProduct),
          headers: {
            'Authorization': 'Basic Y2tfOTM4NTRlNDI2YjRhNDdlY2Y0Yzg0Yjk0ZWQzMDY2Mjk2ZDcwMDIwOTpjc181ZDc4MTMxOTJiNzBjZjBhNzkwNGFmMTAwNDQ0NjAzNzVkZjEyNGQ5'
          //   headerKeyAuthorization: authKeys[0],
          //   headerRefreshToken: authKeys[1]
          }
          );
    });
    return response.fold((l) {
       return false;}, (r) async {
      final bdProductModel = jsonDecode(r.body);
      // print(ppProductModel);
      return bdProductModel;
    });
  } 

}
