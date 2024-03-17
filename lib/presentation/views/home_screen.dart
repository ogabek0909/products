import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:products/presentation/pages/category_page.dart';
import 'package:products/presentation/pages/favorite_page.dart';
import 'package:products/presentation/pages/product_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _notchBottomBarController = NotchBottomBarController(index: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: <Widget>[
        CategoryPage(),
        ProductPage(),
        FavoritePage(),
      ][_currentIndex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _notchBottomBarController,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(Icons.category),
            activeItem: Icon(Icons.category, color: Colors.green),
            itemLabel: 'Category',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.shopping_cart_rounded),
            activeItem: Icon(Icons.shopping_cart_rounded, color: Colors.blue),
            itemLabel: 'Product',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.favorite),
            activeItem: Icon(Icons.favorite, color: Colors.pink),
            itemLabel: 'Favorite',
          ),
        ],
        // color: Colors,
        durationInMilliSeconds: 200,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        kIconSize: 20,
        kBottomRadius: 0,
      ),
    );
  }
}
