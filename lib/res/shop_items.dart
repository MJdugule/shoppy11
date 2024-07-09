import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';

class SPCarouselWidget extends StatefulWidget {
  const SPCarouselWidget({super.key});

  @override
  State<SPCarouselWidget> createState() => _SPCarouselWidgetState();
}

class _SPCarouselWidgetState extends State<SPCarouselWidget> {
  final PageController _pageController = PageController(initialPage: 0, );
  int currentPage = 0;
  int _current = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                  _current = page;
                });
              },
              itemCount: carouselList.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      carouselList[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                    ));
              }),
        ),
         verticalSpaceRegular,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carouselList.asMap().entries.map((entry) {
            return Container(
                width: _current == entry.key ? 9.0 : 9,
                height: 9.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(4),
                    color: _current == entry.key ? kMainColorDark : kMediumGrey));
          }).toList(),
        ),
      ],
    );
  }
}

class SPTotalTile extends StatelessWidget {
  final String title;
  final String price;
  const SPTotalTile({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
        Text('N$price', style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
