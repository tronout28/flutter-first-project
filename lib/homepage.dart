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
    // TODO: implement initState
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
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: siswa11PPLG2?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(siswa11PPLG2![index].name),
                      Text(siswa11PPLG2![index].email),
                    ],
                  )
                );
              }
          ),
        ),
      ),
    );
  }
}