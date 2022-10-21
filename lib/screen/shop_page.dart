import 'package:flutter/material.dart';
import 'package:instagramclone/widget/icon.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ショップ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        // title: TextField(),
        centerTitle: false,
        actions: [
          IconGeneration(icon: Icons.bookmark_add_outlined),
          IconGeneration(icon: Icons.menu),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                hintText: '検索',
                prefixIcon: Icon(Icons.search),
                enabled: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
