
import 'package:flutter/material.dart';

import '../models/settings_model.dart';

class settings extends StatelessWidget {
  const settings({Key? key, required this.settingsModel}) : super(key: key);

  final SettingsModel settingsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Icon(settingsModel.Ficon, color: Colors.white),
            Spacer(
              flex: 1,
            ),
            Text(settingsModel.word),
            Spacer(
              flex: 10,
            ),
            Icon(
              settingsModel.Licon,
              color: Colors.white,
              size: 18,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
