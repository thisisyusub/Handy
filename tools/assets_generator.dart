import 'dart:io';
import 'package:args/args.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';

/// return [List] of files located in [assets] folder
Future<List<String>> _list(
  String dir,
  List<FileSystemEntityType> allowedTypes,
) async {
  final files = Directory(dir).listSync(recursive: false, followLinks: false);
  final result = List<String>();

  for (var file in files) {
    final stat = await file.stat();

    if (allowedTypes == null || allowedTypes.contains(stat.type)) {
      result.add(file.path);
    }
  }

  return result;
}

/// create custom class name for asset classes
String _className(String dir, String baseClass) =>
    (baseClass.startsWith('_') ? '' : '_') +
    baseClass +
    basename(dir).pascalCase;

/// scan the assets directory
Future<bool> _scanDir({
  String dir,
  String baseDir,
  StringBuffer sb,
  String className,
  bool isNested = true,
}) async {
  final files = await _list(dir, [FileSystemEntityType.file]);
  final directories = await _list(dir, [FileSystemEntityType.directory]);

  if (files.any((name) => name.endsWith('.ag-ignore')) ||
      (files.isEmpty && directories.isEmpty)) {
    return false;
  }

  for (var directory in directories.toList()) {
    if (!await _scanDir(
      dir: directory,
      sb: sb,
      baseDir: baseDir,
      className: _className(directory, className),
    )) {
      directories.remove(directory);
    }
  }

  sb.writeln('class $className {\n  const $className._();\n');

  final modifier = isNested ? 'final' : 'static const';

  for (var file in files) {
    final to = relative(file, from: baseDir).replaceAll('\\', '/');
    final name = basenameWithoutExtension(file).camelCase;

    sb.writeln("  $modifier String $name = '$to';");
  }

  if (directories.isNotEmpty) {
    sb.writeln();
  }

  for (var directory in directories) {
    final name = basename(directory).camelCase;
    final directoryClass = _className(directory, className);

    sb.writeln('  $modifier $name = const $directoryClass._();');
  }

  sb.writeln('}\n');

  return true;
}

ArgResults _parseArgs(List<String> args) {
  final parser = ArgParser()
    ..addOption('input', abbr: 'i')
    ..addOption('output', abbr: 'o');

  return parser.parse(args);
}

void main(List<String> args) async {
  /// get args given by command line
  final argsResults = _parseArgs(args);

  /// get application directory
  final projectDirectory = dirname(dirname(Platform.script.toFilePath()));

  /// get inputs
  String assets = argsResults['input'];
  String output = argsResults['output'];

  /// check if the [input] is given or not
  if (assets == null) {
    assets = join(projectDirectory, 'assets');
  }

  /// check if the [output] is given or not
  if (output == null) {
    output = join(projectDirectory, 'lib/utils/constants/assets.dart');
  }

  /// to concatenate Strings efficiently
  final sb = StringBuffer();

  await _scanDir(
    dir: assets,
    sb: sb,
    baseDir: dirname(assets),
    className: 'Assets',
    isNested: false,
  );

  if (output == 'stdout') {
    print(sb.toString());
  } else {
    await File(output).writeAsString(sb.toString());
  }
}
