import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final storageImages = [
  "https://picsum.photos/240/120",
  "https://picsum.photos/240/120",
  "https://picsum.photos/240/120"
];

class StorageDetailPageImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
      ),
      items: storageImages.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
