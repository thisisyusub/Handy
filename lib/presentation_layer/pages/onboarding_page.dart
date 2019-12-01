import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathier/bloc_layer/blocs/onboarding_bloc.dart';
import 'package:heathier/bloc_layer/events/onboarding_event.dart';
import 'package:heathier/bloc_layer/states/onboarding_state.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/contants/routes.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/onboarding_more_about_you.dart';
import 'package:heathier/presentation_layer/widgets/onboarding_tells_us_about_you.dart';
import 'package:heathier/presentation_layer/widgets/onboarding_whats_your_goal.dart';
import 'package:heathier/utils/size_config.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: SizeConfig.blockWidth * 8.888,
        ),
        child: BlocListener<OnBoardingBloc, OnBoardingState>(
          listener: (context, state) {
            if (state is LoadHomePageState) {
              Navigator.of(context).pushNamed(Routes.Home);
            }
          },
          child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
              builder: (context, state) {
                if(state is LoadNextOnBoardingState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.blockHeight * 19.0625,
                      ),
                      Expanded(
                        child: IndexedStack(
                          index: (state as LoadNextOnBoardingState).index,
                          children: [
                            OnBoardingTellsUsAboutYou(),
                            OnBoardingWhatIsYourGoal(),
                            OnBoardingMoreAboutYou(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: SizeConfig.blockHeight * 4.6875,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () =>
                              (state as LoadNextOnBoardingState).isPrevAvailable
                                  ? BlocProvider.of<OnBoardingBloc>(context).add(
                                PrevClickedEvent(),
                              )
                                  : BlocProvider.of<OnBoardingBloc>(context).add(
                                StartClickedEvent(),
                              ),
                              child: Text(
                                (state as LoadNextOnBoardingState).isPrevAvailable
                                    ? AppStrings.previous
                                    : ((state as LoadNextOnBoardingState)
                                    .isSkipAvailable
                                    ? AppStrings.skip
                                    : ''),
                                style: AppTextStyles.fontSize14MediumStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () =>
                              (state as LoadNextOnBoardingState).isNextAvailable
                                  ? BlocProvider.of<OnBoardingBloc>(context).add(
                                NextClickedEvent(),
                              )
                                  : BlocProvider.of<OnBoardingBloc>(context).add(
                                StartClickedEvent(),
                              ),
                              child: Text(
                                (state as LoadNextOnBoardingState).isNextAvailable
                                    ? AppStrings.next
                                    : ((state as LoadNextOnBoardingState)
                                    .isStartAvailable
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
