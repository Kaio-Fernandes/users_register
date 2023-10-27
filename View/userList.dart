import 'package:flutter/material.dart';
import 'package:usersregister/components/user_tile.dart';
import 'package:usersregister/Provider/UserProvider.dart';
import 'package:provider/provider.dart';
import 'package:usersregister/data/mocked_users.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context); 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'User List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add), 
            onPressed: () {
              users.put(const User(
                name: 'Teste',
                email: 'Teste',
                profilephoto: 'Teste',
                name: 'Teste'
              ),)
              },
          ),
        ],
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
