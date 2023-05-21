import 'package:flutter/material.dart';
import 'package:projeto_001/screens/viewUser.dart';

import '../model/User.dart';
import '../services/userService.dart';
import 'EditUser.dart';
import 'addUser.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<User> _userList = <User>[];
  final _userService = UserService();

  getAllUserDetails() async {
    var users = await _userService.readAllUsers();
    _userList = <User>[];
    users.forEach((user) {
      setState(() {
        var userModel = User();
        userModel.id = user['id'];
        userModel.name = user['name'];
        userModel.contact = user['contact'];
        userModel.description = user['description'];
        _userList.add(userModel);
      });
    });
  }

  @override
  void initState() {
    getAllUserDetails();
    super.initState();
  }

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  _deleteFormDialog(BuildContext context, userId) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: const Text(
              'Excluir Livro?',
              style: TextStyle(color: Colors.brown, fontSize: 20),
            ),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white, // foreground
                      backgroundColor: Colors.red),
                  onPressed: () async {
                    var result = await _userService.deleteUser(userId);
                    if (result != null) {
                      Navigator.pop(context);
                      getAllUserDetails();
                      _showSuccessSnackBar('Deleted Success');
                    }
                  },
                  child: const Text('Excluir')),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white, // foreground
                      backgroundColor: Colors.brown),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Não'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestão de Livros - SQLite"),
      ),
      body: Container(
        color: Color.fromRGBO(133, 97, 64, 1),
        child: ListView.builder(
            itemCount: _userList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewUser(
                                  user: _userList[index],
                                )));
                  },
                  leading: const Icon(Icons.person),
                  title: Text(_userList[index].name ?? ''),
                  subtitle: Text(_userList[index].contact ?? ''),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditUser(
                                          user: _userList[index],
                                        ))).then((data) {
                              if (data != null) {
                                getAllUserDetails();
                                _showSuccessSnackBar(
                                    'User Detail Updated Success');
                              }
                            });
                            ;
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.brown,
                          )),
                      IconButton(
                          onPressed: () {
                            _deleteFormDialog(context, _userList[index].id);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddUser()))
              .then((data) {
            if (data != null) {
              getAllUserDetails();
              _showSuccessSnackBar('User Detail Added Success');
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
