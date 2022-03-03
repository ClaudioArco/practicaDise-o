import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.settings, size: 30),
    ];
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("CRYTO"))),
      drawer: NavBar(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 48,
        items: items,
        color: Colors.orange,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(
                0.0, 1.0), // 10% of the width, so there are ten blinds.
            colors: const <Color>[
              Colors.white,
              Colors.blue,
            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                height: 120,
                width: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        "https://cdn.discordapp.com/attachments/931556842881024105/939646772790329384/R0se_punks.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/931556842881024105/939634525544251513/unknown.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/931556842881024105/939634525783343134/unknown.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/931556842881024105/939536834097201192/512.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/931556842881024105/939536833786839050/501.png"),
                    ),
                  ],
                ),
              ),
            ),
            /*Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 120,
              
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://lh3.googleusercontent.com/onYRe8Byzhw_2mFIE0QzjsQFr-2xwrc34tq8skXbWfvdqbG_nb935vN8txmKhVyKP9ZqHUwziTrZnPi9BMxeWD2RtUPo1DNfVldvgA=s992"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://lh3.googleusercontent.com/-xJvEUyODej_bFm3bw1-GXGAUlY8YWONiztFYeKlmqLg2ypcl00ha4KZijX30lEnFufecWSKRVfie7tI5PQJkSoLI10STZyylaFO=s992"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://lh3.googleusercontent.com/actEXpOfq59A5aYeEHQsgZvwOCstXQcyZm2t1uIqRVzKzQLG3sU2kHuiKO1BA_wsDB9Xvf6eSLGEv99vjuu5D1_H8AFCRdYdoG4KXA=s992"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://lh3.googleusercontent.com/FlQDFXZvhS7zVgnUbrFkwUs9yRyYENToh0_xjVEeR9XbPihVlKPLM7qKlJpNFLVD56fnHHHB8QdVDMSToTu3jWzjO8Atvu3SWyAq=s992"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://lh3.googleusercontent.com/iihbEzZsXdcrbPE5oSSMmUqcP9fdnMjQbhokTy1pUFnVWXvmkiSb6dPwXTCUCdGQ1JGF8g-o13vE-qpuTSY6KYFppNiPMf9-MpudaB8=w600"),
                    ),

                  ],

              ),
            ),
          ),*/
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            "NFT",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            "Blockchain",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            "Web 3.0",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.blue,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: const [          
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            "Claudio Arco",
                            textAlign: TextAlign.center,
                          ),
                        ), 
                      ],
                    ),
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
