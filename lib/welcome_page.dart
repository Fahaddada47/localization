import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class WelComePage extends StatefulWidget {
  const WelComePage({super.key});

  @override
  State<WelComePage> createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(AppLocalizations.of(context)!.counterMsg),
      ),
    );
  }
}
