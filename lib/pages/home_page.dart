import 'package:flutter/material.dart';
import 'package:oxirgi_bir_oylik_project/pages/secure_key.dart';
import 'package:oxirgi_bir_oylik_project/pages/symmetric_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SecureKay();
                    }));
                  },
                  child: const Text("Secure Key"),
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SymmetricPage();
                    }));
                  },
                  child: const Text("Symmetric"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
