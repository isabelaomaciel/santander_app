import 'package:flutter/material.dart';
import 'package:santander/shared/app_settings.dart';
import '../../shared/app_colors.dart';
import '../models/user_model.dart';

class HeaderWidget extends StatefulWidget {
  final UserModel user; 
  const HeaderWidget({super.key,
  required this.user,});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      height: AppSettings.screenHeight / 5,
      width: AppSettings.screenWidth,
      color: AppColors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Olá, ${widget.user.name}",
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            "Ag ${widget.user.account!.agency!} CC ${widget.user.account!.number!}",
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
