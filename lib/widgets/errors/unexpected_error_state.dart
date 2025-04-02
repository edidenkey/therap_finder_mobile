import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'empty_page_state_builder.dart';

class UnexpectedErrorState extends StatelessWidget {
  const UnexpectedErrorState({
    Key? key,
    this.padding,
    this.scrollController,
    required this.onPressed,
  }) : super(key: key);

  final EdgeInsetsGeometry? padding;
  final ScrollController? scrollController;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return EmptyPageStateBuilder(
      padding: padding,
      scrollController: scrollController,
      imageAsset: SvgPicture.asset('assets/images/unexpected_error.svg'),
      title: 'Erreur inattendue',
      description:
          "Une erreur inattendue s'est produite. Veuillez réessayer plus tard.",
      actionText: 'Réessayer',
      onPressed: onPressed,
    );
  }
}
