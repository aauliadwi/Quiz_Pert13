import 'package:flutter/material.dart';

void main() {
  runApp(GroceryShopApp());
}

class GroceryShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godrej',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroceryShopPage(),
    );
  }
}

class GroceryShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Godrej'),
      ),
      body: GroceryList(),
    );
  }
}

class GroceryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GroceryItem(
          name: 'Stella Jeruk',
          price: 'Rp. 16.000',
          imageUrl: 'https://via.placeholder.com/150',
          
        ),
        GroceryItem(
          name: 'Cap GAJAH Minyak Kayu Putih',
          price: 'Rp. 5.000',
          imageUrl: 'https://via.placeholder.com/150',
        ),
      ],
    );
  }
}

class GroceryItem extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const GroceryItem({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Text(price),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            // Tambahkan logika untuk menambahkan item ke keranjang
            // Misalnya, tampilkan pesan atau tambahkan ke keranjang
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$name ditambahkan ke keranjang'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),
      ),
    );
  }
}
