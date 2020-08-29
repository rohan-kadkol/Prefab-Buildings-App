import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';

class CarouselCycleButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  const CarouselCycleButton({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: .5, color: Colors.grey)
            ),
            height: 40.0,
            width: 40.0,
            child: Icon(icon),
          ),
          InkWell(
            hoverColor: Theme.of(context).accentColor,
            // splashColor: Theme.of(context).primaryColorLight,
            // focusColor: Theme.of(context).accentColor,
            // highlightColor: Theme.of(context).accentColor,
            customBorder: CircleBorder(),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
