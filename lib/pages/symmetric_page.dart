import 'package:flutter/material.dart';
import 'package:oxirgi_bir_oylik_project/models/user_model.dart';
import 'package:oxirgi_bir_oylik_project/utils/symmetric.dart';
class SymmetricPage extends StatefulWidget {
  const SymmetricPage({Key? key}) : super(key: key);

  @override
  State<SymmetricPage> createState() => _SymmetricPageState();
}

class _SymmetricPageState extends State<SymmetricPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testSymmetric1();
    testSymmetric2();
    testAsymmetric1();
  }

  void testSymmetric1(){
    var user = User(1, "Shaxriyor", "86005729");
    print(user);
    user.cardNumber = Symmetric.encrypt(user.cardNumber);
    print(user);

    var cardNumber = Symmetric.decrypt(user.cardNumber);
    user.cardNumber = cardNumber;
    print(user);
  }

  void testSymmetric2(){
    var user = User(1, "Shaxriyor", "86005729");
    print(user);
    var userString = user.toString();
    print(user);

    var userEncrypted = Symmetric.encrypt(userString);
    print("$userString + 2");

    var userDecrypted = Symmetric.decrypt(userEncrypted);
    print("$userDecrypted+2");

    // var user2 = User.fromJson(userDecrypted);
    // print(user2.toString());
  }

  void testAsymmetric1() async{
    var user = User(1, "Shaxriyor", "86001729");
    print(user);
    var cardNumber =await Assemetric.encrypt(user.cardNumber!);
    print(cardNumber);
    cardNumber =await Assemetric.decrypt(cardNumber);
    print("$cardNumber+ asymmetric");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Symmetric"),
      ),
    );
  }
}
