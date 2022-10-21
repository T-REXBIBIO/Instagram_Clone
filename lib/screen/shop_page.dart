import 'package:flutter/material.dart';
import 'package:instagramclone/widget/icon.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  Widget _shopItem(String image) {
    var assetsImage = image;
    return Container(
      child: Image.network(assetsImage, fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {

    final shopItemList = [
      _shopItem("https://www.pattern-label.com/data/pattern-label/product/plb06_04.jpg"),
      _shopItem("https://cdn.shop-list.com/res/up/shoplist/shp/__thum370__/radchamp/912022/912022_1.jpg"),
      _shopItem("https://o.imgz.jp/fashionnews/115330/master_640_2.jpg"),
      _shopItem("https://i.ytimg.com/vi/FDbiX-qrd14/maxresdefault.jpg"),
      _shopItem("https://www.air-closet.com/share-style/wp-content/uploads/2020/11/yyybde8aoamm6id59xij-640x630.jpg"),
      _shopItem("https://o.imgz.jp/fashionnews/109943/lduud3b36w29ucf.jpg"),
      _shopItem("https://kurashi-to-oshare.jp/wntrlp/wp-content/uploads/t4-50.jpg"),
      _shopItem("https://mechakari.com/itemimg/CC0K0/A1CC00005VJE/03_013.jpg"),
      _shopItem("https://arine.akamaized.net/uploads/photo/external_photo/data/1247606/large_2630f3dc-b75e-4fe3-a3d1-b33cc713707f.jpg"),
      _shopItem("https://kinarino.k-img.com/system/press_images/001/853/378/ec3a40dfaa6ae9e225c1ad57039eeaa479913492.jpeg?1633678809"),
      _shopItem("http://cdn.shopify.com/s/files/1/0548/7974/8169/articles/2022-02-09_19.22.31.png?v=1644403676"),
      _shopItem("https://www.boutique-sha.co.jp/wp-content/uploads/2021/06/a5284.jpg"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ショップ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // title: TextField(),
        centerTitle: false,
        actions: [
          IconGeneration(icon: Icons.bookmark_add_outlined),
          IconGeneration(icon: Icons.menu),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: '検索',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      focusColor: Colors.grey,
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('動画', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade200,elevation: 0),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: shopItemList,
            ),
          )
        ],
      ),
    );
  }
}
