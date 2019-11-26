import 'package:heathier/core/models/multi_selection.dart';
import 'package:heathier/core/models/selectable_item.dart';

class MultiSelectionRepository {
  final List<MultiSelection> _multiSelectionElements = <MultiSelection>[
    MultiSelection(
      title: 'I am using this app to',
      subtitle: 'We need these information for further calculations',
      elements: [
        SelectableItem(
          'Maintain my lifestyle',
        ),
        SelectableItem(
          'Loss weight',
        ),
        SelectableItem(
          'Gain weight',
        ),
      ],
    ),
    MultiSelection(
      title: null,
      subtitle: null,
      elements: [
        SelectableItem(
          'Sedentary',
        ),
        SelectableItem(
          'Lightly active',
        ),
        SelectableItem(
          'Moderately active',
        ),
        SelectableItem(
          'Very active',
        ),
        SelectableItem(
          'Extra active',
        ),
      ],
    ),
    MultiSelection(
      title: 'Do you follow any diet?',
      subtitle: 'We need these information for further calculations',
      elements: [
        SelectableItem(
          'No',
        ),
        SelectableItem(
          'Vegan',
        ),
        SelectableItem(
          'Vegeterian',
        ),
        SelectableItem(
          'Keto',
        ),
      ],
    ),
    MultiSelection(
      title: 'Do you have any food allergy?',
      subtitle: 'We need this information to improve your experience',
      elements: [
        SelectableItem(
          'No',
        ),
        SelectableItem(
          'Caffeine sensitivity',
        ),
        SelectableItem(
          'Lactose intolerance',
        ),
        SelectableItem(
          'Celiac disease',
        ),
      ],
    ),
  ];

  List<MultiSelection> getElements() => [..._multiSelectionElements];
}
