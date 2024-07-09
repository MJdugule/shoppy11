import 'package:shoppy11/data/network_service.dart';

class ShopRepository{
    ShopRepository();

    Future getAllProduct(){
      return NetworkService().getAllShopProduct();
    }
    
  
}