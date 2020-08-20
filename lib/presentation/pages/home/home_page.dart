import 'package:flutter/material.dart';
import '../../shared/app_colors.dart';
import './custom_drawer.dart';

/// build [HomePage] of [Handy]
class HomePage extends StatelessWidget {
  /// used to show [SnackBar]
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerScrimColor: AppColors.primaryColor,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.appBackgroundColor,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(
              left: 16,
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            'Good morning Jeremy\n'
            'you should take \'Orphenadrine\ at 9PM',
            style: Theme.of(context).textTheme.bodyText1.copyWith(height: 2),
          ),
        ),
      ),
    );
  }
}
