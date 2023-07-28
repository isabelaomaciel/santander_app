import 'package:flutter/material.dart';
import 'package:santander/services/api.dart';
import '../../shared/app_colors.dart';
import '../../shared/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/user_model.dart';
import 'package:santander/shared/app_settings.dart';

import '../../widgets/features.dart';
import '../../widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserModel? user;

  @override
  void initState() {
    super.initState();
    fetch();
  }

  fetch() async {
     user = await ApiApp.fetchUser(1);
     setState(() {
       
     });
  }

  @override
  Widget build(BuildContext context) {
    return user == null ? Scaffold(
      body: Center(
        child:
        CircularProgressIndicator(),
      ),
    ) : Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        foregroundColor: Colors.white,
        title: Center(
          child: SvgPicture.asset(
            AppImages.logo,
            height: 24,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 8),
              child: SvgPicture.asset(
                AppImages.notification,
                height: 24,
              ))
        ],
      ),
      body: Column(
        children: [
          HeaderWidget(
            user: user!,
          ),
          const SizedBox(
            height: 200,
          ),
          FeaturesWidget(features: user!.features!),
        ],
      ),
    );
  }
}
