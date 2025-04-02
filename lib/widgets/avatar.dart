import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circular_progress_bar.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.borderRadius,
    required this.size,
    required this.imageUrl,
    required this.placeholderPadding,
    required this.errorPadding,
  }) : super(key: key);

  final double? borderRadius;
  final double size;
  final String imageUrl;
  final double placeholderPadding;
  final double errorPadding;

  @override
  Widget build(BuildContext context) {
    return _Wrapper(
      size: size,
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => _Wrapper(
          size: size,
          borderRadius: borderRadius,
          imageProvider: imageProvider,
        ),
        placeholder: (context, url) => Padding(
          padding: EdgeInsets.all(placeholderPadding),
          child: _Wrapper(
            size: size,
            borderRadius: borderRadius,
            backgroundColor: Colors.transparent,
            child: const AppCircularProgressBar(),
          ),
        ),
        errorWidget: (context, url, error) => Padding(
          padding: EdgeInsets.all(errorPadding),
          child: SvgPicture.asset('assets/images/no_image.svg'),
        ),
      ),
    );
  }
}

class _Wrapper extends StatelessWidget {
  const _Wrapper({
    Key? key,
    required this.size,
    this.borderRadius,
    this.backgroundColor,
    this.imageProvider,
    this.child,
  }) : super(key: key);

  final double size;
  final double? borderRadius;
  final Color? backgroundColor;
  final ImageProvider<Object>? imageProvider;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.hardEdge,
      decoration: ShapeDecoration(
        color: backgroundColor ?? Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? size),
        ),
        image: imageProvider == null
            ? null
            : DecorationImage(
                image: imageProvider!,
                fit: BoxFit.cover,
              ),
      ),
      child: child,
    );
  }
}
