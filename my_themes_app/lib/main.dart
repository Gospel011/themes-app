import 'package:flutter/material.dart';
import 'package:my_themes_app/Presentation/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_themes_app/models/settings/settings.dart';
import 'package:my_themes_app/providers/settings_provider.dart';
import 'package:my_themes_app/util/enums/theme_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(SettingsAdapter());
  Hive.registerAdapter(ThemeOptionsAdapter());

  await Hive.openBox<Settings>('settings-box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SettingsProvider>(
      create: (context) => SettingsProvider(Hive.box<Settings>('settings-box')),
      child: Builder(
        builder: (context) {
          return Consumer<SettingsProvider>(
            builder: (context, provider, _) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: provider.appTheme,
                home: const HomePage(),
              );
            }
          );
        }
      ),
    );
  }
}
