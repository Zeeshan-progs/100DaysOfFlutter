import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NewCard extends StatefulWidget {
  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  VideoPlayerController controll;

  @override
  void initState() {
    super.initState();
    controll = VideoPlayerController.asset("assets/Mirzapur 2.mp4")
      ..initialize().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    controll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Day 11 Video Player"),
        ),
        body: Stack(
          children: [
            controll.value.initialized
                ? AspectRatio(
                    aspectRatio: controll.value.aspectRatio,
                    child: VideoPlayer(controll),
                  )
                : Container(),
            Positioned(
                top: 100,
                left: 200,
                child: IconButton(
                  icon: Icon(controll.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      controll.value.isPlaying
                          ? controll.pause()
                          : controll.play();
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }
}

// FloatingActionButton(
//                   onPressed: () {
//                     setState(() {
//                       controll.value.isPlaying
//                           ? controll.pause()
//                           : controll.play();
//                     });
//                   },
//                   child: Icon(controll.value.isPlaying
//                       ? Icons.pause
//                       : Icons.play_circle_filled),
//                 ),
