import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../shared/app_images.dart';
import '../shared/app_settings.dart';
import '../models/card.dart';

import '../shared/app_colors.dart';

class CardWidget extends StatefulWidget {
  final CreditCard card;
  const CardWidget({super.key, required this.card});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        width: AppSettings.screenWidth - 24,
        decoration: BoxDecoration(
          color: AppColors.red,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Cartão final: ${widget.card.number!.split(' ')[3]}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          SvgPicture.asset(
            AppImages.down,
            semanticsLabel: '',
            height: 14,
          )
        ]));
  }
}
