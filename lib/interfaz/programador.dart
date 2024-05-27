import 'package:flutter/material.dart';

class programador extends StatefulWidget {
  const programador({super.key});

  @override
  State<programador> createState() => _programadorState();
}

class _programadorState extends State<programador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('programador'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFd1K0kb28nQvNQqSwqHh6COi4UoWfYwhdg&s'),
            radius: 50,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('LUIS CUELLO BELTRAN'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.numbers),
            title: Text('Tel:'),
            subtitle: Text('3207729845'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_sharp),
            title: Text('INFORMACION'),
            subtitle: Text('Mejor Programador Del SENA'),
          ),
        ],
      ),
    );
  }
}
