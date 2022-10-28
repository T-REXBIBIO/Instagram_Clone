import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagramclone/widget/icon.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
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
        // title: TextField(),
        actions: [
          IconGeneration(icon: Icons.pin_drop),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: shopItemList,
        ),
      ),
    );
  }

  final shopItemList = const [
    ShopItem("https://www.pattern-label.com/data/pattern-label/product/plb06_04.jpg"),
    ShopItem("https://cdn.shop-list.com/res/up/shoplist/shp/__thum370__/radchamp/912022/912022_1.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/115330/master_640_2.jpg"),
    ShopItem("https://i.ytimg.com/vi/FDbiX-qrd14/maxresdefault.jpg"),
    ShopItem("https://www.air-closet.com/share-style/wp-content/uploads/2020/11/yyybde8aoamm6id59xij-640x630.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/109943/lduud3b36w29ucf.jpg"),
    ShopItem("https://kurashi-to-oshare.jp/wntrlp/wp-content/uploads/t4-50.jpg"),
    ShopItem("https://mechakari.com/itemimg/CC0K0/A1CC00005VJE/03_013.jpg"),
    ShopItem(
        "https://arine.akamaized.net/uploads/photo/external_photo/data/1247606/large_2630f3dc-b75e-4fe3-a3d1-b33cc713707f.jpg"),
    ShopItem(
        "https://kinarino.k-img.com/system/press_images/001/853/378/ec3a40dfaa6ae9e225c1ad57039eeaa479913492.jpeg?1633678809"),
    ShopItem("http://cdn.shopify.com/s/files/1/0548/7974/8169/articles/2022-02-09_19.22.31.png?v=1644403676"),
    ShopItem("https://www.boutique-sha.co.jp/wp-content/uploads/2021/06/a5284.jpg"),
    ShopItem("https://www.pattern-label.com/data/pattern-label/product/plb06_04.jpg"),
    ShopItem("https://cdn.shop-list.com/res/up/shoplist/shp/__thum370__/radchamp/912022/912022_1.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/115330/master_640_2.jpg"),
    ShopItem("https://i.ytimg.com/vi/FDbiX-qrd14/maxresdefault.jpg"),
    ShopItem("https://www.air-closet.com/share-style/wp-content/uploads/2020/11/yyybde8aoamm6id59xij-640x630.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/109943/lduud3b36w29ucf.jpg"),
    ShopItem("https://kurashi-to-oshare.jp/wntrlp/wp-content/uploads/t4-50.jpg"),
    ShopItem("https://mechakari.com/itemimg/CC0K0/A1CC00005VJE/03_013.jpg"),
    ShopItem(
        "https://arine.akamaized.net/uploads/photo/external_photo/data/1247606/large_2630f3dc-b75e-4fe3-a3d1-b33cc713707f.jpg"),
    ShopItem(
        "https://kinarino.k-img.com/system/press_images/001/853/378/ec3a40dfaa6ae9e225c1ad57039eeaa479913492.jpeg?1633678809"),
    ShopItem("http://cdn.shopify.com/s/files/1/0548/7974/8169/articles/2022-02-09_19.22.31.png?v=1644403676"),
    ShopItem("https://www.boutique-sha.co.jp/wp-content/uploads/2021/06/a5284.jpg"),
    ShopItem("http://cdn.shopify.com/s/files/1/0548/7974/8169/articles/2022-02-09_19.22.31.png?v=1644403676"),
    ShopItem("https://www.boutique-sha.co.jp/wp-content/uploads/2021/06/a5284.jpg"),
    ShopItem("https://www.pattern-label.com/data/pattern-label/product/plb06_04.jpg"),
    ShopItem("https://cdn.shop-list.com/res/up/shoplist/shp/__thum370__/radchamp/912022/912022_1.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/115330/master_640_2.jpg"),
    ShopItem("https://i.ytimg.com/vi/FDbiX-qrd14/maxresdefault.jpg"),
    ShopItem("https://www.air-closet.com/share-style/wp-content/uploads/2020/11/yyybde8aoamm6id59xij-640x630.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/109943/lduud3b36w29ucf.jpg"),
    ShopItem("https://kurashi-to-oshare.jp/wntrlp/wp-content/uploads/t4-50.jpg"),
    ShopItem("https://mechakari.com/itemimg/CC0K0/A1CC00005VJE/03_013.jpg"),
    ShopItem("http://cdn.shopify.com/s/files/1/0548/7974/8169/articles/2022-02-09_19.22.31.png?v=1644403676"),
    ShopItem("https://www.boutique-sha.co.jp/wp-content/uploads/2021/06/a5284.jpg"),
    ShopItem("https://www.pattern-label.com/data/pattern-label/product/plb06_04.jpg"),
    ShopItem("https://cdn.shop-list.com/res/up/shoplist/shp/__thum370__/radchamp/912022/912022_1.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/115330/master_640_2.jpg"),
    ShopItem("https://i.ytimg.com/vi/FDbiX-qrd14/maxresdefault.jpg"),
    ShopItem("https://www.air-closet.com/share-style/wp-content/uploads/2020/11/yyybde8aoamm6id59xij-640x630.jpg"),
    ShopItem("https://o.imgz.jp/fashionnews/109943/lduud3b36w29ucf.jpg"),
    ShopItem("https://kurashi-to-oshare.jp/wntrlp/wp-content/uploads/t4-50.jpg"),
    ShopItem("https://mechakari.com/itemimg/CC0K0/A1CC00005VJE/03_013.jpg"),
  ];
}

class ShopItem extends StatelessWidget {
  final String imageURL;
  const ShopItem(this.imageURL, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
