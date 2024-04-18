import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_themes_app/models/settings/settings.dart';
import 'package:my_themes_app/util/app_themes.dart';
import 'package:my_themes_app/util/enums/theme_options.dart';

class SettingsProvider extends ChangeNotifier {
  final Box _box;

  SettingsProvider(Box<Settings> settingsBox) : _box = settingsBox;
  Settings? get targetSettings => _box.get('settings');
  final Settings _defaultSettings = Settings(theme: ThemeOptions.light);

  // settings object
  Settings get settings {
    if (targetSettings == null) {
      _box.put('settings', _defaultSettings);
      return _defaultSettings;
    } else {
      return targetSettings!;
    }
  }

  // getter for apptheme -> themedata

  ThemeData get appTheme {
    if (targetSettings == null) {
      _box.put('settings', _defaultSettings);
      return AppTheme.lightTheme;
    } else {
      return targetSettings!.theme == ThemeOptions.light
          ? AppTheme.lightTheme
          : AppTheme.darkTheme;
    }
  }

  // setter for apptheme
  set appTheme(value) {
    if (value is! ThemeOptions) return;
    Settings? newTheme = targetSettings?.copyWith(theme: value);
    _box.put('settings', newTheme);

    notifyListeners();
  }
}
