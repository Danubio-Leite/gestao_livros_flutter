import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('image/appbar.png'),
          fit: BoxFit.cover,
        ),
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(118, 81, 50, 1),
      ),
      backgroundColor: Color.fromRGBO(133, 97, 64, 1),
      body: Center(
        child: Wrap(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.of(context).pushNamed('/mainScreen');
                    },
                    splashColor: Colors.black26,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(105, 56, 47, 1), width: 4),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage('image/cadastrar2.png'))),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'vt323',
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.of(context).pushNamed('/mainScreen');
                    },
                    splashColor: Colors.black26,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(105, 56, 47, 1), width: 4),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage('image/consultar2.png'))),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Consultar',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'vt323',
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.of(context).pushNamed('/mainScreen');
                    },
                    splashColor: Colors.black26,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(105, 56, 47, 1), width: 4),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage('image/emprestar2.png'))),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Emprestar',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'vt323',
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.of(context).pushNamed('/mainScreen');
                    },
                    splashColor: Colors.black26,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(105, 56, 47, 1), width: 4),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage('image/emprestimos2.png'))),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Emprestimos',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'vt323',
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
