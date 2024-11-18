import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    void _showFontSelectionSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) {
          return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Pilih Font',
                  style: themeProvider.textStyle
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ListTile(
                  title: Text('Roboto', style: themeProvider.textStyle),
                  onTap: () {
                    themeProvider.setFont('Roboto');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Pacifico', style: themeProvider.textStyle),
                  onTap: () {
                    themeProvider.setFont('Pacifico');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title:
                      Text('Source Code Pro', style: themeProvider.textStyle),
                  onTap: () {
                    themeProvider.setFont('SourceCodePro');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: themeProvider.textStyle),
      ),
      body: ListView(
        children: [
          // Theme Selection
          ListTile(
            title: Text('Theme A', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeA');
            },
          ),
          ListTile(
            title: Text('Theme B', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeB');
            },
          ),
          ListTile(
            title: Text('Theme C', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeC');
            },
          ),
          Divider(),
          // Font Selection
          ListTile(
            title: Text('Pilih Font', style: themeProvider.textStyle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              _showFontSelectionSheet(context);
            },
          ),
        ],
      ),
    );
  }
}
