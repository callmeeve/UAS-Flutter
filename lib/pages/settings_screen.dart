import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        automaticallyImplyLeading: false,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: [
              SettingsTile(
                title: Text('Language'),
                description: Text('English'),
                leading: Icon(Icons.language),
              ),
              SettingsTile(
                  title: Text('Environment'),
                  description: Text('Production'),
                  leading: Icon(Icons.cloud_queue)),
            ],
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
              SettingsTile(
                  title: Text('Phone number'), leading: Icon(Icons.phone)),
              SettingsTile(title: Text('Email'), leading: Icon(Icons.email)),
              SettingsTile(
                  title: Text('Sign out'), leading: Icon(Icons.exit_to_app)),
            ],
          ),
          SettingsSection(
            title: Text('Security'),
            tiles: [
              SettingsTile.switchTile(
                title: Text('Lock app in background'),
                leading: Icon(Icons.phonelink_lock),
                onToggle: (bool value) {
                  setState(() {
                    lockInBackground = value;
                  });
                },
                initialValue: null,
              ),
            ],
          ),
          SettingsSection(
            title: Text('Misc'),
            tiles: [
              SettingsTile(
                  title: Text('Terms of Service'),
                  leading: Icon(Icons.description)),
              SettingsTile(
                  title: Text('Open source licenses'),
                  leading: Icon(Icons.collections_bookmark)),
            ],
          )
        ],
      ),
    );
  }
}
