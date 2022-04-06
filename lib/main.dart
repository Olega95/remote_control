import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:remote_control/keys_const.dart';
import 'package:remote_control/shortcuts.dart';

import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Remote Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Remote Control'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                Wrap(
                  spacing: context.width * 0.03,
                  runSpacing: context.width * 0.03,
                  children: [
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.red[800]!,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.POWER);
                      },
                      child: Icon(Icons.power_settings_new, color: Colors.white, size: 30),
                    ),
                    ButtonKey(
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.APPS);
                      },
                      size: ButtonSize.small,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apps_rounded, color: Colors.white),
                          Text(
                            'Приложения',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    ButtonKey(
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.MENU);
                      },
                      size: ButtonSize.small,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings, color: Colors.white),
                          Text(
                            'Настройки',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_1);
                      },
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_2);
                      },
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_3);
                      },
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_4);
                      },
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_5);
                      },
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_6);
                      },
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_7);
                      },
                      child: Center(
                        child: Text(
                          '7',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_8);
                      },
                      child: Center(
                        child: Text(
                          '8',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_9);
                      },
                      child: Center(
                        child: Text(
                          '9',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.VOLUME_UP);
                      },
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.KEY_0);
                      },
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.CHANNEL_UP);
                      },
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_up_rounded, color: Colors.white, size: 40),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.VOLUME_DOWN);
                      },
                      child: Center(
                        child: Text(
                          '–',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.MUTE);
                      },
                      child: Center(
                        child: Icon(Icons.volume_off, color: Colors.white, size: 40),
                      ),
                    ),
                    ButtonKey(
                      size: ButtonSize.small,
                      color: Colors.black,
                      onTap: () async {
                        await RemoteShortcuts.send(KeysConst.CHANNEL_DOWN);
                      },
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 40),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleButtonKey(
                        onTap: () async {
                          await RemoteShortcuts.send(KeysConst.BACK);
                        },
                        child: Text(
                          'Назад',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TimerButtonKey(
                        onTap: () async {
                          await RemoteShortcuts.setTimer30();
                        },
                        child: Text(
                          'Таймер',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      CircleButtonKey(
                        onTap: () async {
                          await RemoteShortcuts.send(KeysConst.EXIT);
                        },
                        child: Text(
                          'Выход',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                NavigationCircle(
                  onTapOk: () async {
                    await RemoteShortcuts.send(KeysConst.OK);
                  },
                  onTapLeft: () async {
                    await RemoteShortcuts.send(KeysConst.LEFT);
                  },
                  onTapRight: () async {
                    await RemoteShortcuts.send(KeysConst.RIGHT);
                  },
                  onTapUp: () async {
                    await RemoteShortcuts.send(KeysConst.UP);
                  },
                  onTapDown: () async {
                    await RemoteShortcuts.send(KeysConst.DOWN);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
