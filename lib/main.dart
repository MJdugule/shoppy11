import 'package:flutter/material.dart';
import 'package:shoppy11/view/dashboard/dashboard.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
              return MaterialApp(
                title: 'Shoppy',
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light(),
                // theme: BuyduTheme.lightMode,
                navigatorKey: navigatorKey,
                scaffoldMessengerKey: scaffoldKey,
                home: const Dashboard(),
              );
            
    
  
  }
}
