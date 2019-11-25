import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/widgets/calorie_list_item.dart';
import 'package:heathier/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:heathier/ui/widgets/home_top_bar.dart';
import 'package:heathier/ui/widgets/sleep_list_item.dart';
import 'package:heathier/ui/widgets/water_list_item.dart';
import 'package:heathier/utils/size_config.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return Scaffold(
              backgroundColor: AppColors.goalItemBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    HomeTopBar(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.blockWidth * 8.8888,
                        right: SizeConfig.blockWidth * 8.8888,
                      ),
                      child: Column(
                        children: <Widget>[
                          CalorieListItem(),
                          WaterListItem(),
                          SleepListItem(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: CustomBottomNavigationBar(),
            );
          },
        );
      },
    );
  }
}
