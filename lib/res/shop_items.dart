import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';

class SPCarouselWidget extends StatefulWidget {
  const SPCarouselWidget({super.key});

  @override
  State<SPCarouselWidget> createState() => _SPCarouselWidgetState();
}

class _SPCarouselWidgetState extends State<SPCarouselWidget> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: PageView.builder(
          physics: const ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              currentPage = page;
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
