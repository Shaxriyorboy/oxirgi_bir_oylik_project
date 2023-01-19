import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_config/flutter_config.dart';

class SecureKay extends StatefulWidget {
  const SecureKay({Key? key}) : super(key: key);

  @override
  State<SecureKay> createState() => _SecureKayState();
}

class _SecureKayState extends State<SecureKay> {
  var serverKey = "";
  var smsKey = "";
  final storage = const FlutterSecureStorage();
  String name = "";
  List<_SecItem> _items = [];

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    serverKey = FlutterConfig.get("SERVER_KEY").toString();
    smsKey = FlutterConfig.get("SMS_KEY").toString();
    _readAll();
  }



  Future<void> _readAll() async {
    await storage.write(key: "full_name", value: "Tursunaliyev Shaxriyor");
    final all = await storage.readAll();
    setState(() {
      _items = all.entries
          .map((entry) => _SecItem(entry.key, entry.value))
          .toList(growable: false);
    });
    name = _items[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(serverKey,style: const TextStyle(fontSize: 30),),
            Text(smsKey,style: const TextStyle(fontSize: 30),),
            Text(name,style: const TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}

class _SecItem {
  _SecItem(this.key, this.value);

  final String key;
  final String value;
}