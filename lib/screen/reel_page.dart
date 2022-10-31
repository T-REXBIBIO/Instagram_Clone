import 'package:card_swiper/card_swiper.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/widget/icon.dart';
import 'package:video_player/video_player.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({Key? key}) : super(key: key);

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  final List videos = [
    "assets/video1.mp4",
    "assets/video2.mp4",
    "assets/video3.mp4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return VideoPlayer(
            src: videos[index],
          );
        },
        itemCount: videos.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key, this.src}) : super(key: key);

  final String? src;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

//初期化
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.src!);

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value.aspectRatio,
      autoPlay: true,
      //自動再生
      // looping: true,
      showControls: false,
      // //コントロールバーの表示（デフォルトではtrue）
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red, //再生済み部分（左側）の色
      //   handleColor: Colors.blue, //再生地点を示すハンドルの色
      //   backgroundColor: Colors.grey, //再生前のプログレスバーの色
      //   bufferedColor: Colors.lightGreen, //未再生部分（右側）の色
      // ),
      // placeholder: Container(
      //   color: Colors.black, //動画読み込み前の背景色
      // ),
      autoInitialize: true, //widget呼び出し時に動画を読み込むかどうか
    );
  }

//コントローラーの破棄
  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Center(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
      BackdropFilter(
        filter: ColorFilter.mode(Colors.black12, BlendMode.darken),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 14, left: 14, top: 50),
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'リール',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    // const IconGeneration(icon: Icons.camera_alt_outlined),
                    IconGeneration(
                      icon: Icons.camera_alt_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),

            const Spacer(),

            // 左下テキストエリア
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // かりで入れてる
                  Container(
                    width: 250,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://m.media-amazon.com/images/I/51cSgpPQAPL.jpg'),
                            ),
                            const Text(
                              'serizawa',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    minimumSize: Size.zero,
                                    side: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    )),
                                onPressed: () {},
                                child: const Text(
                                  'フォローする',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '27day October aaaaaa aaaaaaaa aaaaaaaaaa',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.music_note,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  const Text(
                                    '音源',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const Text(
                                  'serizawa_official',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  // 右アイコンエリア
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const IconGeneration(
                              icon: Icons.add_box_outlined,
                              color: Colors.white,
                            ),
                            const Text(
                              'リミックス',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const IconGeneration(
                              icon: Icons.favorite_border_outlined,
                              color: Colors.white,
                            ),
                            const Text(
                              '11.5万',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const IconGeneration(
                              icon: Icons.mode_comment_outlined,
                              color: Colors.white,
                            ),
                            const Text(
                              '237',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const IconGeneration(
                          icon: Icons.send_rounded,
                          color: Colors.white,
                        ),
                        const IconGeneration(
                            icon: Icons.more_horiz_outlined,
                            color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
