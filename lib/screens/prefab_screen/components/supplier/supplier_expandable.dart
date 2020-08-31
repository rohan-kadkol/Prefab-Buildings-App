import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/light_text_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/overline_title.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/supplier_tile.dart';

class SupplierExpandable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Expandable(
        collapsed: ExpandableButton(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SupplierTile(
                  name: 'Blue Orange Construction',
                  location: 'Shendong, China',
                  imageUrl: kImages['supplier'],
                ),
                const SizedBox(height: kDefaultMargin),
                LightTextButton(text: 'Show more info')
              ],
            ),
          ),
        ),
        expanded: ExpandableButton(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultMargin),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SupplierTile(
                        name: 'Blue Orange Construction',
                        location: 'Shendong, China',
                        imageUrl: kImages['supplier'],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          OverlineTitle(
                            overline: 'Business Type',
                            title: 'Manufacturer/Factory',
                          ),
                          const SizedBox(height: kDefaultMargin),
                          OverlineTitle(
                            overline: 'Production Capacity',
                            title: '5000t per year',
                          ),
                          const SizedBox(height: kDefaultMargin),
                          OverlineTitle(
                            overline: 'Payment Terms',
                            title: 'L/C, T/T',
                          ),
                          const SizedBox(height: kDefaultMargin),
                          OverlineTitle(
                            overline: 'Main Products',
                            title:
                                'Steel Shed , Steel Warehouse , Steel Structure , Steel Building , Mobile House , Container ...',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultMargin),
                LightTextButton(text: 'Show less info')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
