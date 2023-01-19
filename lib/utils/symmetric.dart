import 'package:encrypt/encrypt.dart';
import 'package:crypton/crypton.dart';

class Symmetric{
  static String keystr = "qwertyuiopasdfgh";

  static encrypt(data){
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.encrypt(data,iv: iv).base64;
  }

  static decrypt(data){
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));

    return encrypter.decrypt64(data,iv: iv);
  }
}

class Assemetric{
  static RSAKeypair rsaKeypair = RSAKeypair.fromRandom();

  static encrypt(String message){
    var signature = rsaKeypair.publicKey.encrypt(message);
    return signature;

  }
  static decrypt(String message){
    String verified = rsaKeypair.privateKey.decrypt(message);
    return verified;
  }


}