import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/res/flat_button.dart';
import 'package:shoppy11/view/dashboard/dashboard.dart';

class CheckOutSuccess extends StatefulWidget {
  const CheckOutSuccess({super.key});

  @override
  State<CheckOutSuccess> createState() => _CheckOutSuccessState();
}

class _CheckOutSuccessState extends State<CheckOutSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: safeAreaPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_rounded,
              color: kGreen,
              size: 150,
            ),
            const Text(
              "Successfull",
              style: TextStyle(fontSize: 25),
            ),
            verticalSpaceLarge,
            SPFlatButton(
                text: "Continue Shopping",
                pressState: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) {
                    return const Dashboard(
                      currentIndex: 0,
                    );
                  }), (route) => false);
                },
                active: true,
                isLoading: false,
                textColor: kWhite,
                buttonColor: kMainColorDark)
          ],
        ),
      ),
    );
  }
}
