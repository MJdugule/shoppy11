import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';

class SPFlatButton extends StatelessWidget {
  final String? text;
  final bool active, isLoading;
  final VoidCallback? pressState;
  final Color textColor, buttonColor;

  const SPFlatButton(
      {this.text,
      required this.pressState,
      required this.active,
      required this.isLoading,
      required this.textColor,
      required this.buttonColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
            onPressed: pressState,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              backgroundColor: active ? buttonColor : kMediumGrey,
              shape: RoundedRectangleBorder(
                  // side: BorderSide(
                  //     color:active ? buttonColor : AppColor.kGreyNeutral.shade300.withOpacity(.5),
                  //     width: kPaddingTwo,
                  //     style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              text!,
              style: TextStyle(
                color: active ? textColor : kDarkGrey,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
      // decoration: BoxDecoration(boxShadow: [
      //   BoxShadow(
      //       offset: Offset(0, 4),
      //       color: kMainColorDark.withOpacity(0.25),
      //       blurRadius: 20)
      // ]),
    );
  }
}
