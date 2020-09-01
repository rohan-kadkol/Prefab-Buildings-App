import 'package:flutter/material.dart';
import 'package:prefab_app/models/pair.dart';

const double kDefaultMargin = 20.0;
const double kDefaultBorderRadius = 20.0;

const double kDefaultTileHeight = 500.0;
const double kSmallTileHeight = 400.0;

const double kMaxWidth = 1000.0;

kTitleTextStyle(BuildContext context, Color color) => Theme.of(context)
    .textTheme
    .headline3
    .copyWith(color: color, fontWeight: FontWeight.w600);

kOverlineTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.overline;
kPrimaryTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.w500);

const Map<String, String> kImages = {
  'prefab':
      'https://images.unsplash.com/photo-1565610222536-ef125c59da2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'bolts':
      'https://images.unsplash.com/photo-1560636201-c08c2b24e147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1483&q=80',
  'welding_wires':
      'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
  'flux':
      'https://images.unsplash.com/photo-1565610222536-ef125c59da2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'connection_bolts':
      'https://images.unsplash.com/photo-1515707384144-8c119444db05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
  'doors':
      'https://images.unsplash.com/photo-1536160885591-301854e2ed04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  'windows':
      'https://images.unsplash.com/photo-1469981283837-561b3779462f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  'cladding':
      'https://images.unsplash.com/photo-1562784395-3f4e53e30f36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=793&q=80',
  'supplier':
      'https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'vision':
      'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'mission':
      'https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
};

final List<String> kPrefabImagePaths =
    List.generate(3, (index) => 'assets/images/prefab_$index.png').toList();

final List<BoxShadow> kDefaultShadow = [
  BoxShadow(
      offset: Offset(2, 1),
      color: Colors.grey.withOpacity(.16),
      blurRadius: 10.0)
];

final List<Pair> kBasicInfoPairs = [
  Pair('Model NO.', 'prefab house'),
  Pair('Carbon Structural Steel', 'Q345b'),
  Pair('Application',
      'Steel Workshop, Steel Structure Platform, Steel Fabricated House, Structural Roofing, Frame Part, Steel Walkway and Floor, Steel Structure Bridge'),
  Pair('Size', 'According to Customer′s Requirement'),
  Pair('Color', 'According to Customer′s Requirement'),
  Pair('Wall', 'Sandwich Panel or Corrugated Steel Sheet'),
  Pair('Transport Package', 'Plastic Film'),
  Pair('HS Code', '7308900000'),
  Pair('Type of Steel For Building Structure', 'High-Strength Steel'),
  Pair('Residential Wall Structure', 'Wall Support'),
  Pair('Surface', 'Painting or Hot DIP Galvanize'),
  Pair('Steel Grade', 'Q345 Q235'),
  Pair('Roof', 'Sandwich Panel or Corrugated Steel Sheet'),
  Pair('Purlin Section', 'C or Z Section'),
  Pair('Origin', 'Qingdao, China'),
];

final List<Pair> kMainSteelFramePairs = [
  Pair('Steel  column',
      'Fabricated by Q235 or Q345 Steel,   80*80 or 100*100 or 120*120 or 150*150 Square Tube, alkyd paiting, two primary painting, two finish painting.'),
  Pair('Triangular Steel structure roof',
      'Fabricated by Q235 or Q345 Steel, C80, C100, C120, C140 Section steel,  alkyd paiting, two primary painting, two finish painting.'),
  Pair('Roof Purlin',
      'Fabricated by Q235 Steel, C80, C100, C120, C140 Section steel,  alkyd paiting, two primary painting, two finish painting.'),
  Pair('Ordinary bolt', '4.8S, Galvanized'),
];

final List<Pair> kRoofAndWallPairs = [
  Pair('Roof Panel', """A: Insulated Steel Sandwich Panel wall
(1) Panel width: 950mm;
(2) Thickness: 50-1200mm.
(3) Powder coated Color steel on both sides:  0.4mm/0.5mm/0.6mm
B: Insulation: Polystyrene, Rockwool, Fiber Glass or Polyurethane
(1) Density of Rockwool: 120Kg/m3
(2) Density of Polystyrene: 12Kg/m3, 16KG/M3 20KG/M3
(3) Density of Polyurethane: 40Kg/m3
(4) Density of Fiber Glass:40Kg/m3, 60Kg/m3"""),
  Pair('Wall Panel', """A: Insulated Steel Sandwich Panel wall
(1) Panel width: 950mm;
(2) Thickness: 50-1200mm.
(3) Powder coated Color steel on both sides:  0.4mm/0.5mm/0.6mm
B: Insulation: Polystyrene, Rockwool, Fiber Glass or Polyurethane
(1) Density of Rockwool: 120Kg/m3
(2) Density of Polystyrene: 12Kg/m3, 16KG/M3 20KG/M3
(3) Density of Polyurethane: 40Kg/m3
(4) Density of Fiber Glass:40Kg/m3, 60Kg/m3"""),
  Pair('Edge Cover', '0.4mm galvanized color steel , angle Alu.'),
  Pair('Fasteners & Accessories', 'Nails\glue ect'),
];

final List<Pair> kCeilingAndFlooring = [
  Pair('Ceiling', '6mm gypsum board,with steel keel'),
  Pair('Plywood', '18mm film faced plywood'),
  Pair('Floor feather', '1.5mm  PVC floor leather'),
];

final List<Pair> kDoorAndWindow = [
  Pair('Door',
      """(1) External door: Single open door. Insulated with opening dimension 950*2100mm, furnished with lock  with 3keys.
      (2) Inner door: Single open door. Insulated steel door."""),
  Pair('Window', '4mm glass PVC window witn flying screen'),
];

final List<Pair> kElectricalSystem = [
  Pair('Electric Cable', """(1) Three diferent color.
(2) Lighting: 2.5m m2.
(3) Air condition: 4.0mm2.
(4) BV cable, solid core."""),
  Pair('PVC Wire Channel', 'PVC wire channel'),
  Pair('Lights', 'Double tube fluorescent lamp, 220V,50-60HZ'),
  Pair('Switches', 'Single Switch, with junction box'),
  Pair('Socket', '16A five hole univesal socket.'),
  Pair('Power Distribution Cabinet',
      'Box+breakers+earth leakage protective device '),
];

final List<Pair> kWaterAndPlumbingSystem = [
  Pair('Water drain pipe',
      """(1) PPR pipe, dim 16-20mm, connection fittings are made of copper, life span over 10 years.
(2) Exhaust fan or air exchange hole, size 250mm*250mm made of steel or PVC"""),
  Pair('Sanitary ware',
      """(1) Western Close tool: ceramic, with pipes and installation fittings
(2) Urinal: ceramic, with pipes and installation fittings
(3) Wash basin: ceramic, with post, faucet, pipes and installation fittings
(4) Shower head, Shower base, Water mixture"""),
];

const String kProjectDescription = """
  ###### Technical Parameter of standard prefab house:
  1. Wind resistance: Grade 11(wind speed≤ 120km/h)
  2. Earthquake resistance: Grade 7
  3. Live load capacity of roofing: 0.6kn/m2
  4. External and internal wall heat transmission coefficient: 0.35Kcal/m2hc
  5. Second Floor Load Capacity: 150 kg/m2
  6. Live load of corridor is 2.0kn/ m2
  7. Wall permitted loading: 0.6KN/ m2
  8. Ceiling Permitted live loading: 0.5 KN/m2
  9. Wall Coefficient of thermal conductivity: K=0.442W/m2k
  10. Ceiling Coefficient of thermal conductivity: K=0.55W/ m2K
  ###### Main Steel Part
  1. H section steel columns, beams and wind-proof columns
  2. With treatment of one time red-oxide primer painting and two times grey facing painting
  ###### Roof & Wall Cladding
  1. Roof & Wall Corrugated Single Steel Sheet: 0.3mm-0.6mm
  2. Roof & Wall Sandwich Panel Insulated with EPS Foam, Glass wool, Rock wool and PU: 50mm-150mm
  3. Transparent Sheet (FRP): 1.0mm-2.0mm
  4. Flashings: Made by Color-coated Corrugated Steel Sheet

  ###### Window & Door
  1. Window: PVC Window or Aluminum-alloy Window
  2. Door: Sliding Door or Roll-up Door

  ###### Fasteners
  High-strength Bolt; Common Bolt and Nut; Self-tapping Screws; Foundation Bolt and Nut, ETC
 
  ###### Other Optional Accessories
  1. Gutter
  2. Downpipe
  3. Brick Wall: The height of brick wall is depended on client's need
  4. Ventilation System
  5. Lifting Height of Crane: >6m
  6. Lifting Weight of Crane: 3-30T
  """;

const String kTechnicalAdvantages = """
  1. Stable and Earthquake Resistance
  2. Wind resistance
  3. Long using time up to 50 years;
  4. Sound insulation;
  5. Environment friendly: Most of the excess material can be 100% recycled;
  6. Fast construction, time saving and labor saving;
  7. Lower cost and maintenance.ergy conserving and environment protection.
  """;
