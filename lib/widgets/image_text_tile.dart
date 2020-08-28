import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';

class ImageTextTile extends StatefulWidget {
  final String name;
  final String imageUrl;
  final Function onTap;
  final double height;
  final double width;

  const ImageTextTile(
      {@required this.name,
      @required this.imageUrl,
      this.onTap,
      this.height,
      this.width});

  @override
  __StoreCategoryButtonState createState() => __StoreCategoryButtonState();
}

class __StoreCategoryButtonState extends State<ImageTextTile> {
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
          height: widget.height,
          width: widget.width,
          padding: const EdgeInsets.all(kDefaultMargin/4),
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
                    Text(
                      widget.name,
                      style: kTitleTextStyle(context, Colors.white),
                      textAlign: TextAlign.center,
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
