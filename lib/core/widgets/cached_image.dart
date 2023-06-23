import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

CachedNetworkImage cachedImage(String image,
    {double? width,
    double? height,
    imageBuilder,
    bool hasPlaceHolder = true,
    BoxFit fit = BoxFit.cover,
    double errorWidht = 60,
    double errorHeight = 60,
    double errorRadius = 20}) {
  return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: imageBuilder,
      width: width,
      height: height,
      fit: fit , 
       errorWidget: (context, url, error) => ClipRRect(
            borderRadius: BorderRadius.circular(errorRadius),
            child: Image.asset("assets/images/order.png",
                opacity: const AlwaysStoppedAnimation(.1),
                fit: fit,
                width: errorWidht,
                height: errorHeight),
          ),);
}
