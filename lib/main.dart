import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Product'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Center(
            child: Text("Products", style: TextStyle(color: Colors.white)),
          ),
        ),
        //floatingActionButton: FloatingActionButton(
        //  child: Icon(Icons.add),
        //  onPressed: () {
        //    print('Clicked');
        //  },
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('Pressed');
          },
          icon: Icon(Icons.shop),
          label: Text('Shop'),
          foregroundColor: Colors.red,
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                      leading: Image.network("https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-12163861/no_brand_sega_sweater_-_atasan_wanita_-_sweater_crop_-_sweater_wanita_-_sweater_oversize_-_sweater_full01_ig57ysby.jpg"),
                      title: const Text(
                        "Sweater Crop Wanita",
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: const Text(
                        "Bahan : flecee tebal, Warna : Brick, putih dan hitam",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
