import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usersregister/View/userList.dart';
import 'package:usersregister/Provider/UserProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => UsersProvider(),
      child:MaterialApp(
      title: 'User List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: UserList(),
    ),);
  }
}
