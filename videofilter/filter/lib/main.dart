import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:tapioca/tapioca.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  late XFile _video;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  _pickVideo() async {
    try {
      final ImagePicker _picker = ImagePicker();
      XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
      if (video != null) {
        setState(() {
          _video = video;
          isLoading = true;
        });
      }
    } catch (error) {
      // ignore: avoid_print
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    child: const Text("Pick a video and Edit it"),
                    onPressed: () async {
                      // ignore: avoid_print
                      print("clicked!");
                      await _pickVideo();
                      var tempDir = await getTemporaryDirectory();
                      final path =
                          '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}result.mp4';
                      // ignore: avoid_print
                      print(tempDir);

                      try {
                        final tapiocaBalls = [
                          TapiocaBall.filterFromColor(
                              const Color.fromARGB(255, 215, 82, 82)),
                        ];
                        final cup = Cup(Content(_video.path), tapiocaBalls);
                        cup.suckUp(path).then((_) async {
                          // ignore: avoid_print
                          print("finished");
                          // ignore: avoid_print
                          print(path);
                          GallerySaver.saveVideo(path).then((bool? success) {
                            // ignore: avoid_print
                            print(success.toString());
                          });
                          final currentState = navigatorKey.currentState;
                          if (currentState != null) {
                            currentState.push(
                              MaterialPageRoute(
                                  builder: (context) => VideoScreen(path)),
                            );
                          }

                          setState(() {
                            isLoading = false;
                          });
                        });
                      } on PlatformException {
                        // ignore: avoid_print
                        print("error!!!!");
                      }
                    },
                  )),
      ),
    );
  }
}

class VideoScreen extends StatefulWidget {
  final String path;

  // ignore: use_key_in_widget_constructors
  const VideoScreen(this.path);

  @override
  // ignore: no_logic_in_create_state
  _VideoAppState createState() => _VideoAppState(path);
}

class _VideoAppState extends State<VideoScreen> {
  final String path;

  _VideoAppState(this.path);

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(path))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
