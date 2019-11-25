import 'package:flutter/material.dart';
import 'package:heathier/utils/size_config.dart';

class HomeTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.blockHeight * 24.21875,
      child: Center(
        child: FittedBox(
          child:
              Text('burda custom seyler olacaq mesaj suggestion kimi seyler'),
        ),
      ),
    );
  }
}
