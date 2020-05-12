import 'package:flutter/material.dart';
//import 'package:qrcode_reader/qrcode_reader.dart';
import 'mapas_paga.dart';
import 'direcciones_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _correntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
        ],
      ),
      body: _callPage(_correntIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.filter_center_focus), onPressed: _scanQR,
          backgroundColor: Theme.of(context).primaryColor,
          ),
    );
  }

_scanQR () async {

     //https://www.google.com/
     //geo:40.66592495825039,-74.2078150792969

   //  String futureString = '';

    //  try {

    //     futureString = await new QRCodeReader().scan();
    //  } catch (e) {
    //    futureString = e.toString();
    //  }
      
    //  print(futureString);
    //  if(futureString != null){
    //        print('Tenemos informacion');
    //  }
}
  Widget _callPage(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }

  Widget _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _correntIndex,
      onTap: (index) {
        setState(() {
          _correntIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Mapas')),
        BottomNavigationBarItem(
            icon: Icon(Icons.brightness_5), title: Text('Direcciones'))
      ],
    );
  }
}
 