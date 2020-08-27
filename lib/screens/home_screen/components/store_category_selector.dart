import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/components_screen/components_screen.dart';

class StoreCategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultMargin),
      height: 500.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: _StoreCategoryButton(
              heroTag: 'prefab',
              onTap: () =>
                  Navigator.pushNamed(context, ComponentsScreen.routeName, arguments: 'prefab'),
              name: 'Prefab',
              imageUrl:
                  'https://images.unsplash.com/photo-1565610222536-ef125c59da2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
            ),
          ),
          const SizedBox(
            width: kDefaultMargin,
          ),
          Expanded(
            child: _StoreCategoryButton(
              heroTag: 'components',
              onTap: () =>
                  Navigator.pushNamed(context, ComponentsScreen.routeName, arguments: 'components'),
              name: 'Components',
              imageUrl:
                  'https://images.unsplash.com/photo-1560636201-c08c2b24e147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1483&q=80',
            ),
          ),
        ],
      ),
    );
  }
}

class _StoreCategoryButton extends StatefulWidget {
  final String heroTag;
  final String name;
  final String imageUrl;
  final Function onTap;

  const _StoreCategoryButton(
      {@required this.name, @required this.imageUrl, this.onTap, this.heroTag});

  @override
  __StoreCategoryButtonState createState() => __StoreCategoryButtonState();
}

class __StoreCategoryButtonState extends State<_StoreCategoryButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onHover: (isHover) => setState(() => this.isHover = isHover),
        // onHover: (isHover) => print(isHover),
        onTap: widget.onTap,
        // onTap: () => {},
        child: Container(
          child: Stack(
            children: [
              CachedNetworkImage(
                height: double.infinity,
                width: double.infinity,
                fadeInCurve: Curves.easeIn,
                fadeInDuration: Duration(milliseconds: 1000),
                fit: BoxFit.cover,
                imageUrl: widget.imageUrl,
                placeholder: _loader,
                errorWidget: _error,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).accentColor.withOpacity(.5),
                      Theme.of(context).primaryColorDark.withOpacity(.5),
                      Theme.of(context).accentColor.withOpacity(.5),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: '${widget.heroTag}_title',
                      child: Text(
                        widget.name,
                        style: kTitleTextStyle(context, Colors.white),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: kDefaultMargin / 2),
                        height: 10.0,
                        width: 60.0,
                        color: Theme.of(context).accentColor),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: isHover ? 20.0 : 0.0,
                    )
                  ],
                ),
              )
            ],
          ),
          // child: Image.network(imageUrl,
          //     height: double.infinity, width: double.infinity, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _loader(BuildContext context, String url) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _error(BuildContext context, String url, dynamic error) {
    print(error);
    return const Center(
      child: Icon(Icons.error),
    );
  }
}
