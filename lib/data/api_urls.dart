import 'package:shoppy11/data/server_config.dart';

class APIBase {
  // static String get productionURL {
  //   return 'https://api-perrypay.carburant.io';
  // }

  static String get developmentURL {
    return 'https://api.timbu.cloud';
   
  }
}

class APIPathHelper {
  APIPathHelper();

 
  
  //Product
  String getAllShopProduct = '${APIBase.developmentURL}/products?organization_id=$organizationID&Appid=$appID&Apikey=$apiKey';
  String getAllCategory = '${APIBase.developmentURL}/products/categories';
  
  //Product
  String getAllOrders = '${APIBase.developmentURL}/orders';  

}
