import 'package:flutter/material.dart';
import 'package:my_themes_app/providers/settings_provider.dart';
import 'package:my_themes_app/util/enums/theme_options.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  
  ThemeOptions currentTheme(BuildContext context) {
    return context.read<SettingsProvider>().settings.theme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SETTINGS"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Choose app theme",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: PopupMenuButton(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: currentTheme(context) ==
                              ThemeOptions.light
                          ? Colors.black
                          : Colors.white),
                  child: Text(
                    currentTheme(context) ==
                          ThemeOptions.light
                      ? "light theme"
                      : "dark theme",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith( fontSize: 14, color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: const Text("Light theme"),
                      onTap: () {
                        context.read<SettingsProvider>().appTheme =
                            ThemeOptions.light;
                      },
                    ),
                    PopupMenuItem(
                        child: const Text("Dark theme"),
                        onTap: () {
                          context.read<SettingsProvider>().appTheme =
                              ThemeOptions.dark;
                        })
                  ];
                }),
          )
        ],
      ),
    );
  }
}
