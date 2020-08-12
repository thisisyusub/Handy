class _AssetsFonts {
  const _AssetsFonts._();

  final String rubikBlack = 'assets/fonts/Rubik-Black.ttf';
  final String rubikBlackItalic = 'assets/fonts/Rubik-BlackItalic.ttf';
  final String rubikBold = 'assets/fonts/Rubik-Bold.ttf';
  final String rubikBoldItalic = 'assets/fonts/Rubik-BoldItalic.ttf';
  final String rubikItalic = 'assets/fonts/Rubik-Italic.ttf';
  final String rubikLight = 'assets/fonts/Rubik-Light.ttf';
  final String rubikLightItalic = 'assets/fonts/Rubik-LightItalic.ttf';
  final String rubikMedium = 'assets/fonts/Rubik-Medium.ttf';
  final String rubikMediumItalic = 'assets/fonts/Rubik-MediumItalic.ttf';
  final String rubikRegular = 'assets/fonts/Rubik-Regular.ttf';
}

class _AssetsIcons {
  const _AssetsIcons._();

  final String illustration = 'assets/icons/illustration.svg';
}

class _AssetsImages {
  const _AssetsImages._();

  final String forYou = 'assets/images/for_you.png';
}

class _AssetsLangs {
  const _AssetsLangs._();

  final String az = 'assets/langs/az.json';
  final String en = 'assets/langs/en.json';
}

/// stores [assets details]
class Assets {
  const Assets._();


  /// fonts used in app
  static const fonts = _AssetsFonts._();
  /// icons used in app
  static const icons = _AssetsIcons._();
  /// images used in app
  static const images = _AssetsImages._();
  /// langs used in app
  static const langs = _AssetsLangs._();
}

