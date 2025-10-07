import 'package:flutter/material.dart';


void main() {
  runApp(const BussinessCard());
}

class BussinessCard extends StatelessWidget {
  const BussinessCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TampilanKartu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TampilanKartu extends StatelessWidget {
  const TampilanKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6fUgN2t3hjoZjlth5o_hU9dSBby53HZlSnw&s',
              ),
              backgroundColor: Colors.transparent,
            ),
            Text('Asyraf Fadhlurrohman',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            
            ),
            Text('Mahasiswa Teknik Informatika',
              style: TextStyle(
                fontSize: 25,
                color: Colors.red
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.call), 
                title: Text('0812345678'),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.mail), 
                title: Text('asyrafdhlrrhmn@gmail.com'),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.facebook), 
                title: Text('@asyrafdhlrrhmn'),
              ),
            ),

            
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.location_city), 
                title: Text('JL. Arwindani No. 10, Kota Malang'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}