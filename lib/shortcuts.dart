import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:vibration/vibration.dart';

import 'keys_const.dart';

class RemoteShortcuts {
  static Future<void> setTimer30() async {
    await IrSensorPlugin.transmitListInt(list: KeysConst.MENU);
    await Future.delayed(const Duration(milliseconds: 300));
    await IrSensorPlugin.transmitListInt(list: KeysConst.UP);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.UP);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.UP);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.OK);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.RIGHT);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.RIGHT);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.RIGHT);
    await Future.delayed(const Duration(milliseconds: 200));
    await IrSensorPlugin.transmitListInt(list: KeysConst.MENU);
  }

  static Future<void> send(List<int> list) async {
    await Vibration.vibrate(duration: 50);
    await IrSensorPlugin.transmitListInt(list: list);
  }
}
