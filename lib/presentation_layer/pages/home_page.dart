import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy/bloc_layer/blocs/login_or_register_bloc.dart';
import 'package:handy/bloc_layer/states/login_or_register_state.dart';
import 'package:handy/constants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_icons.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/custom_drawer.dart';
import 'package:handy/presentation_layer/widgets/home_vertical_list_view.dart';
import 'package:handy/utils/size_config.dart';

class HomePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return BlocListener<LoginOrRegisterBloc, LoginOrRegisterState>(
              listener: (context, state) {
                if (state is LoginUnAuthenticatedState) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.Welcome,
                    (Route<dynamic> route) => false,
                  );
                }
              },
              child: SafeArea(
                child: Scaffold(
                  key: scaffoldKey,
                  appBar: AppBar(
                    backgroundColor: AppColors.appBackgroundColor,
                    elevation: 0,
                    leading: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 8.888,
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.menu,
                        ),
                        onTap: () {
                          scaffoldKey.currentState.openDrawer();
                        },
                      ),
                    ),
                  ),
                  drawer: CustomDrawer(),
                  backgroundColor: AppColors.appBackgroundColor,
                  body: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 4,
                      left: SizeConfig.widthMultiplier * 8.888,
                      right: SizeConfig.widthMultiplier * 8.888,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Good morning Jeremy\n\n',
                            style: AppTextStyles.fontSize16MediumStyle,
                            children: [
                              TextSpan(
                                text: 'you should take \'Orphenadrine\' at 9PM',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3.4375,
                        ),
                        Text(
                          'These are for you',
                          style: AppTextStyles.fontSize12RegularStyle,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5625,
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  AppIcons.forYouPng,
                                ),
                                width: SizeConfig.widthMultiplier * 37.5,
                                height: SizeConfig.heightMultiplier * 14.0625,
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 5.555,
                              ),
                              Container(
                                child: Image.asset(
                                  AppIcons.forYouPng,
                                ),
                                width: SizeConfig.widthMultiplier * 37.5,
                                height: SizeConfig.heightMultiplier * 14.0625,
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 5.555,
                              ),
                              Container(
                                child: Image.asset(
                                  AppIcons.forYouPng,
                                ),
                                width: SizeConfig.widthMultiplier * 37.5,
                                height: SizeConfig.heightMultiplier * 14.0625,
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 5.555,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 5.15625,
                        ),
                        Expanded(
                          child: HomeVerticalListView(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
