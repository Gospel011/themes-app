// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

import 'package:my_themes_app/util/enums/theme_options.dart';

part 'settings.g.dart';

@HiveType(typeId: 0)
class Settings extends HiveObject {
  @HiveField(0)
  final ThemeOptions theme;
  Settings({
    required this.theme,
  });

  Settings copyWith({
    ThemeOptions? theme,
  }) {
    return Settings(
      theme: theme ?? this.theme,
    );
  }

  @override
  String toString() => 'Settings(theme: $theme)';
}
