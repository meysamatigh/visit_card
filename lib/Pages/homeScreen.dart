import 'package:flutter/material.dart';
import 'package:visit_cart/Pages/Sections/contact.dart';
import 'package:visit_cart/Pages/Sections/profile.dart';
import 'package:visit_cart/Pages/Sections/contact.dart';
import 'package:visit_cart/Pages/Sections/samples.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: he,
        width: wi,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              ProfileView(),
              Samples(),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
