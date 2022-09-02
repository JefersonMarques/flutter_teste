import 'package:cargotruck/core/colors.dart';
import 'package:cargotruck/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:cargotruck/data/text.dart';
import 'package:cargotruck/core/space.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(textSlide.length, activePage)),
        const SpaceVH(height: 8.0),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Bem vindo Motorista',
              style: headline1,
            ),
            TextSpan(
              text: '.',
              style: headlineDot,
            ),
          ]),
        ),
        const SpaceVH(height: 8.0),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: PageView.builder(
              itemCount: textSlide.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(textSlide, pagePosition, active);
              }),
        ),
      ],
    );
  }
}

AnimatedContainer slider(textSlide, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: Text(
      textSlide[pagePosition],
      textAlign: TextAlign.center,
      style: headline2,
    ),
  );
}

textAnimation(PageController animation, textSlide, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Text(textSlide[pagePosition]),
    ),
  );
}

List<Widget> indicators(textSlideLength, currentIndex) {
  return List<Widget>.generate(textSlideLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color:
              currentIndex == index ? white : Color.fromARGB(66, 255, 255, 255),
          shape: BoxShape.circle),
    );
  });
}
