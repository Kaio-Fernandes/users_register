import 'package:flutter/material.dart';
import 'package:usersregister/ViewModels/users.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final profilephoto = user.profilephoto.isEmpty
        ? const CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.profilephoto),
          );

    return ListTile(
      leading: profilephoto,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: const Row(
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.only(left: 10),
              icon: Icon(Icons.edit),
              onPressed: null,
            ),
            IconButton(
              padding: EdgeInsets.only(left: 30),
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
    
  }
}
