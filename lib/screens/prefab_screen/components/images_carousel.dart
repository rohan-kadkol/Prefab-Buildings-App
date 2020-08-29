import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/carousel_cycle_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/carousel_image.dart';

class ImagesCarousel extends StatelessWidget {
  final List<String> assetImages;
  final double height;
  final double width;

  const ImagesCarousel({@required this.assetImages, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: height,
          width: width,
          child: CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: assetImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(kDefaultMargin),
                child: CarouselImage(
                  assetImage: assetImages[index],
                ),
              );
            },
            options: CarouselOptions(
                viewportFraction: .6,
                autoPlay: true,
                pauseAutoPlayOnManualNavigate: true,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselCycleButton(
                icon: Icons.chevron_left,
                onTap: () => carouselController.previousPage(
                    curve: Curves.fastOutSlowIn)),
            const SizedBox(
              width: kDefaultMargin / 2,
            ),
            CarouselCycleButton(
                icon: Icons.chevron_right,
                onTap: () =>
                    carouselController.nextPage(curve: Curves.fastOutSlowIn))
          ],
        )
      ],
    );
  }
}
