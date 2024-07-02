import 'package:flutter/material.dart';



class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({required this.heading, Key? key}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
    );
  }
}



