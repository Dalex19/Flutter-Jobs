import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class User {
  static int idIncrement = 0;
 final String _fullName, _email, password;
  int _id = 0;

  User(this._fullName, this._email, this.password) {
    _id = idIncrement++;
  }

  int getId () => _id;

  @override
  String toString () {
    return "User: $_fullName $_email $_id $password";
  }

}

class UserList {
  static List <User> allUsers = [];

  static void registerUser (User newUser) {
    bool userExisit = allUsers.any((element) => element.getId() == newUser.getId());

    (userExisit) ? throw Exception("") : allUsers.add(newUser);
  }

  static bool loginUser (String email ) {
     
    bool existUser = allUsers.any((element) => element._email == email);
    return (existUser) ? true : throw Exception("User not found");

  }

  static void showAllUsers () => allUsers.forEach(print);

}

class UserServices {

  static void registerUserFB (String email, password) async {
    try {
      final credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      print(credentials);
    } catch (e) {
      throw Exception("Error in firebase ${e}");
    }
  }

}