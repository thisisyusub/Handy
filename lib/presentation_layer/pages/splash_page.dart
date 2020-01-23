import 'package:flutter/material.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: FutureBuilder(
          future: null,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              print(snapshot.data);
            }

            return Container();
          },
        ),
      ),
    );
  }

  // Future<String> getLocation() async {
  //   Position currentLocation = await Geolocator().getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //   );
  //   return '${currentLocation.latitude} and ${currentLocation.longitude}';
  // }
}
