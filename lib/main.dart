import 'package:flutter/material.dart';
import 'package:flutter_application_4/API/Api.dart';
import 'package:flutter_application_4/interfaz/Medicamentos.dart';
import 'package:flutter_application_4/interfaz/programador.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20.0),
          elevation: 5.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Inicio de Sesión',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => menu(),
                      ),
                    );
                  },
                  child: Text('Iniciar Sesión'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VITALSAVE'),
        backgroundColor: Color.fromARGB(234, 9, 105, 146),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 144, 170, 255),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(234, 66, 176, 255)),
                accountName: Text(
                  "VITALSABE",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Vitalsave@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(234, 48, 190, 255),
                  child: Text(
                    "V",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Color.fromARGB(234, 9, 105, 146)),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: Icon(Icons.home),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => menu(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.medical_information_rounded),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Medicamentos'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MEDICAMENTOS(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.remember_me),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Recordatorio'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MEDICAMENTOS(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.assistant),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Asistente'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MEDICAMENTOS(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Salud'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_2_rounded),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Desarrolladores'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programador(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.api_outlined),
              iconColor: Color.fromARGB(234, 9, 105, 146),
              title: Text('Api'),
              onTap: () {
                Api().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("API"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(r[i].url),
                                ),
                                title: Text(r[i].title),
                                trailing: Text(r[i].id.toString()),
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido al Menú Principal',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM81BtCOOHrBfgKHGznqN_LbRjdGZ1OzW8Ug&s'),
              radius: 120,
            ),
          ],
        ),
      ),
    );
  }
}
