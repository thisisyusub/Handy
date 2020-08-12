import 'dart:collection';
import 'dart:convert' show json;
import 'dart:io';

void main() {
  _generateFile();
}

extension on String {
  String get capitalize {
    final splitParts = split('_');
    var res = splitParts[0];
    for (var i = 1; i < splitParts.length; i++) {
      res += splitParts[i][0].toUpperCase() + splitParts[i].substring(1);
    }
    return res;
  }
}

extension on FileSystemEntity {
  String get languageCode =>
      uri.toString().split("langs/").last.split(".").first;
}

void _generateFile() async {
  final dir = Directory('assets/langs');

  /// used to store keys of language keys for documentation
  /// will be used to control if the current file contains
  /// current json key or not
  final languageKeysWithJsonKeys = <String, HashSet<String>>{};

  /// used to store values of keys for documentation
  final languageKeysWithJsonValues = <String, Map<String, dynamic>>{};

  /// stores [all keys] used in app
  final valueKeys = HashSet<String>();

  /// stores all languageCodes used in app
  final languageCodes = HashSet<String>();

  if (dir.existsSync()) {
    /// get files in [langs] directory
    var files = dir.listSync(recursive: false);

    for (var file in files) {
      /// reads current file in [langs] line-by-line
      var keyLines = await File(file.path).readAsString();

      /// converts json string to Map
      Map<String, dynamic> keysAndValues = json.decode(keyLines);

      /// adds langauge key to HashSet
      languageCodes.add(file.languageCode);

      /// collects all keys of current language
      final currentLangKeys = HashSet<String>();

      final currentLangWithValues = <String, dynamic>{};

      /// collects all values of current langauge
      for (var keyAndValue in keysAndValues.entries) {
        valueKeys.add(keyAndValue.key);
        currentLangKeys.add(keyAndValue.key);
        currentLangWithValues.putIfAbsent(
            keyAndValue.key, () => keyAndValue.value);
      }

      languageKeysWithJsonKeys.putIfAbsent(
          file.languageCode, () => currentLangKeys);
      languageKeysWithJsonValues.putIfAbsent(
        file.languageCode,
        () => currentLangWithValues,
      );
    }

    /// do some logic
    final output = 'lib/utils/constants/language_keys.dart';

    /// to perform fast String concatenation
    final sb = StringBuffer();

    /// decalares class
    sb.writeln('/// provides keys of [Langauge Jsons]\n'
        'class LanguageKeys {\n  const LanguageKeys._();');

    for (var i = 0; i < valueKeys.length; i++) {
      final currentKey = valueKeys.elementAt(i);

      for (var langCode in languageCodes) {
        final isCurrentLangFileContainsCurentKey =
            languageKeysWithJsonKeys[langCode].contains(currentKey);

        final message = isCurrentLangFileContainsCurentKey
            ? languageKeysWithJsonValues[langCode][currentKey]
            : "[Null]";

        sb.writeln(
          '  /// ${isCurrentLangFileContainsCurentKey ? '' : '!'}'
          ' ${langCode.toUpperCase()}: $message',
        );
      }
      sb.writeln(
          '  static const String ${currentKey.capitalize} = \'$currentKey\';');

      if (i != valueKeys.length - 1) {
        sb.writeln();
      }
    }

    sb.writeln('}');

    /// write all data to [langauge_keys.dart] file in [utils/constants] directory
    var file = File(output);
    var writer = file.openWrite();
    await writer.write(sb.toString());
    writer.close();
  }
}
