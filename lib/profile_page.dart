import 'package:flutter/material.dart';
import 'package:instagramclone/icon.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _photoItem(String image) {
    var assetsImage = image;
    return Container(
      child: Image.network(assetsImage, fit: BoxFit.cover,),
    );
  }


  @override
  Widget build(BuildContext context) {

    var photoList = [
      _photoItem("https://m.media-amazon.com/images/I/51cSgpPQAPL.jpg"),
      _photoItem("https://m.media-amazon.com/images/I/51tL8edlGrL._SX342_SY445_QL70_ML2_.jpg"),
      _photoItem("https://tc-animate.techorus-cdn.com/resize_image/resize_image.php?image=08051451_5f2a48d60aba5.jpg&width=500"),
      _photoItem("https://m.media-amazon.com/images/I/515PglV7USL.jpg"),
      _photoItem("https://m.media-amazon.com/images/I/51mRggqWmJL.jpg"),
      _photoItem("https://res.booklive.jp/582763/011/thumbnail/X.jpg"),
      _photoItem("https://www.cmoa.jp/data/image/title/title_0000168514/VOLUME/100001685140009.jpg"),
      _photoItem("https://www.shonenjump.com/j/comics/_comicimage/chainsaw010.jpg"),
      _photoItem("https://m.media-amazon.com/images/I/51cSgpPQAPL.jpg"),
      _photoItem("https://m.media-amazon.com/images/I/51tL8edlGrL._SX342_SY445_QL70_ML2_.jpg"),
      _photoItem("https://tc-animate.techorus-cdn.com/resize_image/resize_image.php?image=08051451_5f2a48d60aba5.jpg&width=500"),
      _photoItem("https://m.media-amazon.com/images/I/515PglV7USL.jpg"),
      _photoItem("https://m.media-amazon.com/images/I/51mRggqWmJL.jpg"),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 200,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'serizawa',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconGeneration(
                icon: Icons.menu_rounded,
                onPressed: () {},
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    // backgroundImage: NetworkImage(
                    //     'https://ghib-mori.com/wp-content/uploads/2021/02/totoro030-768x415.jpg'
                    // ),
                    radius: 55,
                  ),
                  Column(
                    children: const [
                      Text('0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('投稿')
                    ],
                  ),
                  Column(
                    children: const [
                      Text('0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('フォロワー')
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '0',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('フォロー中')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: SizedBox(
                height: 32,
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'プロフィール編集',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))))),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.person_add,
                          color: Colors.black,
                          size: 20,
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(40,32),
                            backgroundColor: Colors.grey.shade300,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                child: Column(children: [
                  SizedBox(height: 20.0),
                  DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey.shade400,
                            indicatorColor: Colors.black,
                            tabs: [
                              Tab(child:Icon(Icons.grid_on_sharp, size: 25,)),
                              Tab(child:Icon(Icons.photo_camera_front_outlined, size: 25,)),
                            ],
                          ),
                        ),
                        Container(
                            height: 550,
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                            ),
                            child: TabBarView(children:[
                              Container(
                                child: Center(
                                    child: GridView.extent(
                                      maxCrossAxisExtent: 150,
                                      padding: const EdgeInsets.all(4),
                                      mainAxisSpacing: 4,
                                      crossAxisSpacing: 4,
                                      children: photoList,
                                    )
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text('投稿がありません', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ])
                        )
                      ])
                  ),
                ]),
              ),
            )],
        ),

      ),
    );
  }
}

