import 'package:flutter/material.dart';

class RAS1 extends StatefulWidget {
  const RAS1({super.key});

  @override
  State<RAS1> createState() => _RAS1State();
}

class _RAS1State extends State<RAS1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDICAMENTOS',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MEDICAMENTOS(),
    );
  }
}

class MEDICAMENTOS extends StatefulWidget {
  const MEDICAMENTOS({super.key});

  @override
  State<MEDICAMENTOS> createState() => _MEDICState();
}

class _MEDICState extends State<MEDICAMENTOS> {
  final List<Map<String, dynamic>> photos = [
    {
      'title': 'Acetaminofen',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://copservir.vtexassets.com/arquivos/ids/1265045/ACETAMINOFEN-GENFAR--500-MG_F.jpg?v=638459076853600000',
    },
    {
      'title': 'Ibuprofeno',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://copservir.vtexassets.com/arquivos/ids/1286840/IBUPROFENO-400-MG--COASPHARMA-_F.jpg?v=638483280364500000',
    },
    {
      'title': 'Alcanfor',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'data:image/jpeg;base64,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',
    },
    {
      'title': 'Naproxeno',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://lh3.googleusercontent.com/pTmucqiria2Dq2x_vQR04GmGbdxsWle-1xBtn6Ktn5bek_JOJKoLffNm7QZVyVuryZ7n9gHgJTOBrDIU5fo88PFo9br7MGSWx34n=s360',
    },
    {
      'title': 'Diclofenaco',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'data:image/jpeg;base64,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',
    },
    {
      'title': 'Enalapril',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'data:image/jpeg;base64,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',
    },
    {
      'title': 'Loperamida',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://copservir.vtexassets.com/arquivos/ids/1286840/IBUPROFENO-400-MG--COASPHARMA-_F.jpg?v=638483280364500000',
    },
    {
      'title': 'Ketaprofano',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://lh3.googleusercontent.com/pTmucqiria2Dq2x_vQR04GmGbdxsWle-1xBtn6Ktn5bek_JOJKoLffNm7QZVyVuryZ7n9gHgJTOBrDIU5fo88PFo9br7MGSWx34n=s360',
    },
    {
      'title': 'Famotidina',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://lh3.googleusercontent.com/pTmucqiria2Dq2x_vQR04GmGbdxsWle-1xBtn6Ktn5bek_JOJKoLffNm7QZVyVuryZ7n9gHgJTOBrDIU5fo88PFo9br7MGSWx34n=s360',
    },
    {
      'title': 'Loratadina',
      'description': '2 pastillas cada 8 horas',
      'imageUrl':
          'https://lh3.googleusercontent.com/pTmucqiria2Dq2x_vQR04GmGbdxsWle-1xBtn6Ktn5bek_JOJKoLffNm7QZVyVuryZ7n9gHgJTOBrDIU5fo88PFo9br7MGSWx34n=s360',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicamentos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final photo = photos[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhotoDetailsPage(photo: photo),
                      ));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            photo['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              photo['title'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              photo['description'],
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class PhotoDetailsPage extends StatelessWidget {
  final Map<String, dynamic> photo;

  const PhotoDetailsPage({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo['title']),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              photo["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              photo["description"],
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
