import 'package:heathier/data_layer/models/selectable_item.dart';
import 'package:meta/meta.dart';

class MultiSelection {
  final String title;
  final String subtitle;
  final List<SelectableItem> elements;

  MultiSelection({
    @required this.title,
    @required this.subtitle,
    @required this.elements,
  });
}
