import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy/bloc_layer/blocs/onboarding_bloc.dart';
import 'package:handy/bloc_layer/events/onboarding_event.dart';
import 'package:handy/bloc_layer/states/onboarding_state.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/contants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/onboarding_do_you_follow_any_diet.dart';
import 'package:handy/presentation_layer/widgets/onboarding_more_about_you.dart';
import 'package:handy/presentation_layer/widgets/onboarding_tells_us_about_you.dart';
import 'package:handy/presentation_layer/widgets/onboarding_whats_your_goal.dart';
import 'package:handy/utils/size_config.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: SizeConfig.widthMultiplier * 8.888,
        ),
        child: BlocListener<OnBoardingBloc, OnBoardingState>(
          listener: (context, state) {
            if (state is LoadHomePageState) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.Home, (Route<dynamic> route) => false);
            }
          },
          child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
              builder: (context, state) {
            if (state is LoadNextOnBoardingState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 19.0625,
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: state.index,
                      children: [
                        OnBoardingTellsUsAboutYou(),
                        OnBoardingMoreAboutYou(),
                        OnBoardingWhatIsYourGoal(),
                        OnBoardingDoYouFollowAnyDiet(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.heightMultiplier * 4.6875,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => state.isPrevAvailable
                              ? BlocProvider.of<OnBoardingBloc>(context).add(
                                  PrevClickedEvent(),
                                )
                              : BlocProvider.of<OnBoardingBloc>(context).add(
                                  StartClickedEvent(),
                                ),
                          child: Text(
                            state.isPrevAvailable
                                ? AppStrings.previous
                                : (state.isSkipAvailable
                                    ? AppStrings.skip
                                    : ''),
                            style: AppTextStyles.fontSize14MediumStyle,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => state.isNextAvailable
                              ? BlocProvider.of<OnBoardingBloc>(context).add(
                                  NextClickedEvent(),
                                )
                              : BlocProvider.of<OnBoardingBloc>(context).add(
                                  StartClickedEvent(),
                                ),
                          child: Text(
                            state.isNextAvailable
                                ? AppStrings.next
                                : (state.isStartAvailable
                                    ? AppStrings.start
                                    : ''),
                            style: AppTextStyles.fontSize14MediumStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
            return Container();
          }),
        ),
      ),
    );
  }
}
