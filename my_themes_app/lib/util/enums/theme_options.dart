import 'package:hive/hive.dart';
part 'theme_options.g.dart';

@HiveType(typeId: 1)
enum ThemeOptions {
  @HiveField(0)
  light,
  @HiveField(1)
  dark
}
