import 'package:bms/screens/interfaces/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ChangeThemeButtonWidget extends StatelessWidget {
  const   ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      activeThumbImage: AssetImage('assets/moon.png'),
      activeColor: Colors.black,



      inactiveThumbImage: AssetImage('assets/suny.png'),
      inactiveTrackColor: Colors.cyanAccent,
      inactiveThumbColor: Colors.yellowAccent,


      // trackColor: MaterialStateProperty.,



      // inactiveTrackColor: Colors.cyanAccent,

      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false,);
        provider.toggleTheme(value);
      },
    );
  }
}
