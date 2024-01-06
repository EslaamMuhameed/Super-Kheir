import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrl;

  const ImageSlider(@required this.imageUrl);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: CarouselSlider.builder(
        itemCount: 3,
        carouselController: carouselController,
        itemBuilder: (BuildContext context, int index, int realIndex) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl[index]),
                fit: BoxFit.fill,
              ),
          ),
        ),
            ),
        options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.4,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlay: true,
            viewportFraction: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reson) {
              setState(() {
                currentIndex = index;
              });
            }),
      ),
    );
  }
}
