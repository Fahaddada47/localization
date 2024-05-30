import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'main.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void _changeLanguage(Locale newLocale) {
    setState(() {
      MyApp.setLocale(context, newLocale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingMsg),
        actions: [
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.language),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                const PopupMenuItem(
                  value: Locale('bn'),
                  child: Text('Bangla'),
                ),
              ];
            },
            onSelected: (Locale newValue) {
              _changeLanguage(newValue);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.settingMsg),
      ),
    );
  }
}
