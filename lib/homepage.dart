import 'package:first_project/siswa.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Siswa>? siswa11PPLG2=[];

  @override
  void initState() {
    super.initState();
    Siswa bajuri= new Siswa("Bajuri", "bajuri@gmail.com");
    Siswa dapin = new Siswa("Dapin", "haidar@gmail.com");
    Siswa fatih = new Siswa("Fatih", "ftih@gmail.com");
    Siswa kamidi = new Siswa("kamidi", "kamidi@gmail.com");
    Siswa rudi = new Siswa("Rudi", "rood@gmail.com");
    siswa11PPLG2?.add(bajuri);
    siswa11PPLG2?.add(dapin);
    siswa11PPLG2?.add(fatih);
    siswa11PPLG2?.add(kamidi);
    siswa11PPLG2?.add(rudi);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: siswa11PPLG2?.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  leading: Icon(Icons.person, size: 36),
                  title: Text(
                    siswa11PPLG2![index].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    siswa11PPLG2![index].email,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}