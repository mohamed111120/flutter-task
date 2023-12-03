import 'package:flutter/material.dart';
import 'package:task5/frist_screen/models/settings_model.dart';

import 'widgets/setting_witget.dart';

class FristSCreen extends StatelessWidget {
  const FristSCreen({Key? key}) : super(key: key);

  final List<SettingsModel> Settings = const [
    SettingsModel(
        Ficon: Icons.privacy_tip,
        word: 'Privacy',
        Licon: Icons.arrow_forward_ios),
    SettingsModel(
        Ficon: Icons.history, word: 'History', Licon: Icons.arrow_forward_ios),
    SettingsModel(
        Ficon: Icons.help, word: 'Help', Licon: Icons.arrow_forward_ios),
    SettingsModel(
        Ficon: Icons.settings,
        word: 'Settings',
        Licon: Icons.arrow_forward_ios),
    SettingsModel(
        Ficon: Icons.account_box,
        word: 'Invites',
        Licon: Icons.arrow_forward_ios),
    SettingsModel(Ficon: Icons.logout, word: 'Logout'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {}),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.sunny, color: Colors.white))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS78v02XdQcEwGFp-OzRVKkRhnuwoKNSKs_yA&usqp=CAU'),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Mohamed Osama',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'mohamed_osama@gmail.com',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Upgrade To Pro'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    settings(settingsModel: Settings[index]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 12,
                    ),
                itemCount: Settings.length),
          ],
        ),
      ),
    );
  }
}
