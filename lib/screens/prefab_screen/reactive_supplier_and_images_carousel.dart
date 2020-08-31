import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/action_buttons_bar.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_icon_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_table.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/supplier_expandable.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_expandable.dart';
import 'package:share/share.dart';
import 'package:universal_io/io.dart';

class ReactiveSupplierAndImagesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return width <= kMaxWidth
        ? Column(
            children: [
              ImagesCarousel(
                height: 350.0,
                width: 100.0,
                assetImages: kPrefabImagePaths,
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    ImagesCarousel(
                      height: 300.0,
                      width: 100.0,
                      assetImages: kPrefabImagePaths,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kDefaultMargin),
                      child: CustomTable(
                        pairs: kBasicInfoPairs,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
