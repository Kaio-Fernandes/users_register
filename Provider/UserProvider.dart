import 'package:flutter/material.dart';
import 'package:usersregister/data/mocked_users.dart';
import 'package:usersregister/ViewModels/users.dart';
import 'dart:math';

class UsersProvider with ChangeNotifier {
  Map<String, User> _items = {...mocked_users};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      id,
      () => User(
        id: id,
        name: user.name,
        email: user.email,
        profilephoto: user.profilephoto,
      ),
    );

    // notifyListeners();
  }
}
