import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppy11/view/dashboard/dashboard.dart';
import 'package:shoppy11/viewmodels/product_viewmodel.dart';
import 'package:shoppy11/viewmodels/shop_viewmodel.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

      // List<SPProductModel> cartList = SPProductModel.cartList;


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
                return MultiProvider(
        providers: [
       
          ChangeNotifierProvider(
              create: (BuildContext context) => ProductViewModel()),
          ChangeNotifierProvider(
              create: (BuildContext context) => ShopViewModel()),
        ],
        builder: (context, _) {
                  return MaterialApp(
                    title: 'Timbu Cloud',
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData.light(),
                    // theme: BuyduTheme.lightMode,
                    navigatorKey: navigatorKey,
                    scaffoldMessengerKey: scaffoldKey,
                    home: const Dashboard(),
                  );
                }
              );
            
    
  
  }
}
