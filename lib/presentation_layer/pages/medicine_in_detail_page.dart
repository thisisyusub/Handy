import 'package:flutter/material.dart';
import 'package:handy/constants/app_strings.dart';
import 'package:handy/constants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/chip_item.dart';
import 'package:handy/presentation_layer/widgets/date_controller.dart';
import 'package:handy/utils/size_config.dart';

class MedicineInDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Container(
          margin: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 7.5,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 8.888,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    AppStrings.setReminder,
                    style: AppTextStyles.fontSize14MediumStyle,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 7.8125,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.medicine,
                          style: AppTextStyles.fontSize16MediumStyle,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(
                            Routes.AddMedicine,
                          ),
                          child: ChipItem(
                            label: AppStrings.add,
                            height: SizeConfig.heightMultiplier * 3.75,
                            width: SizeConfig.widthMultiplier * 14.444,
                            borderRadius: SizeConfig.widthMultiplier * 3.33,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5.46875,
                    ),
                    DateController(),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.21875,
                    ),
                    _medicineItem(
                      'Vitamin C 1/',
                      '1',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    _medicineItem(
                      'Orphenadrine 1/',
                      '3',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _medicineItem(
    String nameAndTarget,
    String completed,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.close,
              color: AppColors.dividerColor,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 3,
            ),
            RichText(
              text: TextSpan(
                text: nameAndTarget,
                style: AppTextStyles.fontSize14MediumStyle,
                children: [
                  TextSpan(
                      text: completed,
                      style: AppTextStyles.fontSize12RegularV2Style),
                ],
              ),
            ),
          ],
        ),
        Row(
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
      ],
    );
  }
}
