import 'package:flutter/material.dart';
import 'package:heathier/core/models/multi_selection.dart';
import 'package:heathier/ui/widgets/multi_selection_button.dart';
import 'package:heathier/ui/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpMultiSelection extends StatelessWidget {
  final MultiSelection multiSelection;
  final bool enableMultiSelection;

  SignUpMultiSelection({
    @required this.multiSelection,
    this.enableMultiSelection = false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageViewTitle(
            title: multiSelection.title,
            subTitle: multiSelection.subtitle,
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 13.4275,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: multiSelection.elements
                .map(
                  (element) => MultiSelectionButton(
                    title: element.title,
                    isSelected: element.isSelected,
                    selectFunction: enableMultiSelection ? null : null,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

//  void onMultiSelectionEnabled(String title) {
//    setState(() {
//      widget.multiSelection.elements.forEach((element) {
//        if (element.title == title) {
//          element.isSelected = !element.isSelected;
//        }
//      });
//    });
//  }
//
//  void onItemSelected(String title) {
//    setState(() {
//      widget.multiSelection.elements.forEach((element) {
//        if (element.title == title) {
//          element.isSelected = true;
//        } else {
//          element.isSelected = false;
//        }
//      });
//    });
//  }
}
