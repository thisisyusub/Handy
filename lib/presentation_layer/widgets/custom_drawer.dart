import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackgroundColor,
      width: SizeConfig.blockWidth * 62.777,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 8.888,
          vertical: SizeConfig.blockHeight * 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockHeight * 15.625,
            ),
            ListTile(
              title: Text('Jake'),
              onTap: null,
            ),
            SizedBox(height: SizeConfig.blockHeight * 12.5),
            ListTile(
              title: Text('Notifications'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dark Mode'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {},
            ),
            SizedBox(
              height: SizeConfig.blockHeight * 10.9375,
            ),
            ListTile(
              title: Text('Sign out'),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}
