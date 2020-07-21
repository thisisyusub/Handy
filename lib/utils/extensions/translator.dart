/*
 * Copyright (c) 2020, Kanan Yusubov. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited.
 * Proprietary and confidential
 * Written by: Kanan Yusubov <kanan.yusub@gmail.com>, July 2020
 */

import 'package:flutter/material.dart';
import '../localization_helper/app_localizations.dart';

extension StringTranslator on String {
  String translate(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}
