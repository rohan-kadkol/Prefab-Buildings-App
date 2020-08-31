import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_icon_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_table.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/light_text_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/overline_title.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/supplier_expandable.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/supplier_tile.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_expandable.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_table.dart';
import 'package:prefab_app/screens/prefab_screen/reactive_supplier_and_images_carousel.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:share/share.dart';
import 'package:universal_io/io.dart';

class PrefabScreen extends StatelessWidget {
  static final String routeName = '/prefab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(),
                const SizedBox(height: kDefaultMargin),
                Text(
                  'Modular Prefab Housing Unit',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.black87),
                ),
                const SizedBox(height: kDefaultMargin),
                ReactiveSupplierAndImagesCarousel(),
                TitleExpandable(
                  initialExpanded: true,
                  title: 'Production Description',
                  children: [
                    MarkdownText(
                      text: kProjectDescription,
                    ),
                  ],
                ),
                TitleExpandable(
                  title: 'Material List for Prefabricated House',
                  children: [
                    TitleTable(
                      title: 'Main Steel Frame',
                      pairs: kMainSteelFramePairs,
                    ),
                    TitleTable(
                      title: 'Roof & Wall',
                      pairs: kRoofAndWallPairs,
                    ),
                    TitleTable(
                      title: 'Ceiling & Flooring',
                      pairs: kCeilingAndFlooring,
                    ),
                    TitleTable(
                      title: 'Door & Window',
                      pairs: kDoorAndWindow,
                    ),
                    TitleTable(
                      title: 'Electrical System',
                      pairs: kElectricalSystem,
                    ),
                    TitleTable(
                      title: 'Water & Plumbing System (choose)',
                      pairs: kWaterAndPlumbingSystem,
                    ),
                    MarkdownText(
                      text:
                          'Plumbing System and Rain Water Drainage System as per building design',
                    ),
                  ],
                ),
                TitleExpandable(
                  title: 'Technical advantages',
                  children: [MarkdownText(text: kTechnicalAdvantages)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
