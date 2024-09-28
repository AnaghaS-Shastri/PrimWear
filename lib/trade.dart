
import 'package:flutter/material.dart';

void main() {
  runApp(MyECommerceApp());
}

class MyECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

// Sample product data
final List<Product> products = [
  Product(name: 'Product 1', imageUrl: 'https://via.placeholder.com/300', price: 29.99),
  Product(name: 'Product 2', imageUrl: 'https://via.placeholder.com/300', price: 49.99),
  Product(name: 'Product 3', imageUrl: 'https://via.placeholder.com/300', price: 19.99),
];

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView();
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Products'),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                if (cart.isNotEmpty)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Text(
                        cart.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cart: cart)),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onAddToCart: addToCart,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  const ProductCard({Key? key, required this.product, required this.onAddToCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(product.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16, color: Colors.green)),
          ),
          ElevatedButton(
            onPressed: () => onAddToCart(product),
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cart;

  const CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart[index].name),
            subtitle: Text('\$${cart[index].price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}