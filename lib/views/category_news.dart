import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget {
  String name;

  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        toolbarHeight: 120,
        title: Text(
          widget.name,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: itemBuilder)
      ),
    );
  }
}

class ShowCategory extends StatelessWidget {
  String Image, desc, title;

  ShowCategory({required this.Image, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: Image,
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(title),
          Text(desc),
        ],
      ),
    );
  }
}
