import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../../utils/constants/routes.dart';
import '../shared/app_icons.dart';
import '../../utils/responsive_helper/size_config.dart';
import './chip_item.dart';
import './custom_progress_bar.dart';
import './home_list_item.dart';

class HomeVerticalListView extends StatefulWidget {
  @override
  _HomeVerticalListViewState createState() => _HomeVerticalListViewState();
}

class _HomeVerticalListViewState extends State<HomeVerticalListView> {
  List<Widget> _homeListElements;

  @override
  void didChangeDependencies() {
    _homeListElements = [
      GestureDetector(
        key: ValueKey(AppStrings.calorie),
        onTap: () => Navigator.of(context).pushNamed(Routes.CalorieInDetail),
        child: HomeListItem(
          iconPath: AppIcons.calorie,
          title: AppStrings.calorie,
          rightTopWidget: Hero(
            tag: '${AppStrings.calorie} progress bar',
            child: CustomProgressBar(0.5),
          ),
          leftBottomWidget: Text('782/1800 Cal'),
          rightBottomWidget: Hero(
            tag: '${AppStrings.calorie} add button',
            child: ChipItem(
              label: AppStrings.add,
              height: SizeConfig.heightMultiplier * 3.75,
              width: SizeConfig.widthMultiplier * 14.444,
              borderRadius: SizeConfig.widthMultiplier * 3.33,
            ),
          ),
        ),
      ),
      GestureDetector(
        key: ValueKey(AppStrings.water),
        onTap: () => Navigator.of(context).pushNamed(
          Routes.WaterInDetail,
        ),
        child: HomeListItem(
          iconPath: AppIcons.waterDrop,
          title: AppStrings.water,
          rightTopWidget: CustomProgressBar(0.4),
          leftBottomWidget: Text('7/12 glasses'),
          rightBottomWidget: Row(
            children: <Widget>[
              ChipItem(
                height: SizeConfig.heightMultiplier * 4.6875,
                width: SizeConfig.widthMultiplier * 8.333,
                borderRadius: SizeConfig.widthMultiplier * 4.166,
                isResizable: false,
                isIconButton: true,
                buttonIcon: Icons.remove,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
              ChipItem(
                height: SizeConfig.heightMultiplier * 4.6875,
                width: SizeConfig.widthMultiplier * 8.333,
                borderRadius: SizeConfig.widthMultiplier * 4.166,
                isResizable: false,
                isIconButton: true,
                buttonIcon: Icons.add,
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        key: ValueKey(AppStrings.sleep),
        onTap: () => Navigator.of(context).pushNamed(
          Routes.SleepInDetail,
        ),
        child: HomeListItem(
          iconPath: AppIcons.moon,
          title: AppStrings.sleep,
          rightTopWidget: CustomProgressBar(0.76),
          leftBottomWidget: Text('7/8 hours'),
          rightBottomWidget: ChipItem(
            label: AppStrings.edit,
            height: SizeConfig.heightMultiplier * 3.75,
            width: SizeConfig.widthMultiplier * 14.444,
            borderRadius: SizeConfig.widthMultiplier * 3.33,
          ),
        ),
      ),
//      GestureDetector(
//        key: ValueKey(AppStrings.weight),
//        onTap: () {},
//        child: HomeListItem(
//          iconPath: AppIcons.weight,
//          title: AppStrings.weight,
//          rightTopWidget: ChipItem(
//            label: AppStrings.manage,
//            width: SizeConfig.widthMultiplier * 19.722,
//            height: SizeConfig.heightMultiplier * 3.75,
//            borderRadius: SizeConfig.widthMultiplier * 3.333,
//          ),
//          leftBottomWidget: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text('69 kg'),
//              Text('BMI 22.4'),
//            ],
//          ),
//          rightBottomWidget: CustomBMIProgressBar(60),
//        ),
//      ),
//      GestureDetector(
//        key: ValueKey(AppStrings.medicine),
//        onTap: () => Navigator.of(context).pushNamed(
//          Routes.MedicineInDetail,
//        ),
//        child: HomeListItem(
//          iconPath: AppIcons.medicine,
//          title: AppStrings.medicine,
//          rightTopWidget: ChipItem(
//            label: AppStrings.manage,
//            width: SizeConfig.widthMultiplier * 19.722,
//            height: SizeConfig.heightMultiplier * 3.75,
//            borderRadius: SizeConfig.widthMultiplier * 3.333,
//          ),
//          leftBottomWidget: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.end,
//            children: <Widget>[
//              Text(
//                'Vitamin C 1/1',
//                overflow: TextOverflow.ellipsis,
//              ),
//              SizedBox(
//                height: SizeConfig.heightMultiplier * 3.125,
//              ),
//              Text('Orphenandrine 1/3'),
//            ],
//          ),
//          rightBottomWidget: Column(
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  ChipItem(
//                    height: SizeConfig.heightMultiplier * 4.6875,
//                    width: SizeConfig.widthMultiplier * 8.333,
//                    borderRadius: SizeConfig.widthMultiplier * 4.166,
//                    isResizable: false,
//                    isIconButton: true,
//                    buttonIcon: Icons.remove,
//                  ),
//                  SizedBox(
//                    width: SizeConfig.widthMultiplier * 2.777,
//                  ),
//                  ChipItem(
//                    height: SizeConfig.heightMultiplier * 4.6875,
//                    width: SizeConfig.widthMultiplier * 8.333,
//                    borderRadius: SizeConfig.widthMultiplier * 4.166,
//                    isResizable: false,
//                    isIconButton: true,
//                    buttonIcon: Icons.add,
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: SizeConfig.heightMultiplier * 3.125,
//              ),
//              Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  ChipItem(
//                    height: SizeConfig.heightMultiplier * 4.6875,
//                    width: SizeConfig.widthMultiplier * 8.333,
//                    borderRadius: SizeConfig.widthMultiplier * 4.166,
//                    isResizable: false,
//                    isIconButton: true,
//                    buttonIcon: Icons.remove,
//                  ),
//                  SizedBox(
//                    width: SizeConfig.widthMultiplier * 2.777,
//                  ),
//                  ChipItem(
//                    height: SizeConfig.heightMultiplier * 4.6875,
//                    width: SizeConfig.widthMultiplier * 8.333,
//                    borderRadius: SizeConfig.widthMultiplier * 4.166,
//                    isResizable: false,
//                    isIconButton: true,
//                    buttonIcon: Icons.add,
//                  ),
//                ],
//              ),
//            ],
//          ),
//        ),
//      ),
    ];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[..._homeListElements],
    );
  }
}
