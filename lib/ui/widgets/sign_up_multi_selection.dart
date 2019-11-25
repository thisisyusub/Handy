import 'package:flutter/material.dart';
import 'package:heathier/core/models/MultiSelection.dart';
import 'package:heathier/ui/widgets/multi_selection_button.dart';
import 'package:heathier/ui/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpMultiSelection extends StatefulWidget {
  final String title;
  final String subTitle;
  final List<MultiSelection> elements;
  final bool enableMultiSelection;

  SignUpMultiSelection({
    @required this.title,
    @required this.subTitle,
    @required this.elements,
    this.enableMultiSelection = false,
  });

  @override
  _SignUpMultiSelectionState createState() => _SignUpMultiSelectionState();
}

class _SignUpMultiSelectionState extends State<SignUpMultiSelection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageViewTitle(
            title: widget.title,
            subTitle: widget.subTitle,
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 13.4275,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.elements
                .map(
                  (element) => MultiSelectionButton(
                    element.title,
                    element.isSelected,
                    widget.enableMultiSelection
                        ? onMultiSelectionEnabled
                        : onItemSelected,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  void onMultiSelectionEnabled(String title) {
    setState(() {
      widget.elements.forEach((element) {
        if (element.title == title) {
          element.isSelected = !element.isSelected;
        }
      });
    });
  }

  void onItemSelected(String title) {
    setState(() {
      widget.elements.forEach((element) {
        if (element.title == title) {
          element.isSelected = true;
        } else {
          element.isSelected = false;
        }
      });
    });
  }
}
