/*
 * Copyright (c) 2020, Kanan Yusubov. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited.
 * Proprietary and confidential
 * Written by: Kanan Yusubov <kanan.yusub@gmail.com>, July 2020
 */

import 'package:flutter/material.dart';
import '../localization_helper/app_localizations.dart';

/// Extension to translate [Strings] easily
extension StringTranslator on String {
  /// method can be called using any [String] value
  String translate(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}
