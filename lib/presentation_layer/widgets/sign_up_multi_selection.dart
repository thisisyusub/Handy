import 'package:flutter/material.dart';
import 'package:heathier/data_layer/models/multi_selection.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

import 'multi_selection_button.dart';

class SignUpMultiSelection extends StatelessWidget {
  final MultiSelection multiSelection;
  final bool enableMultiSelection;
  final Function selectionFunction;

  SignUpMultiSelection({
    @required this.multiSelection,
    @required this.selectionFunction,
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
                    selectFunction: selectionFunction,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
