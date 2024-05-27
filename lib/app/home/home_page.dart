import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int currentSongIndex = 0;
  List<Map<String, dynamic>> musicData = [];

  @override
  void initState() {
    super.initState();
    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }


  Future<void> setAudio() async {
    String jsonString = await DefaultAssetBundle.of(context).loadString('assets/music_data.json');
    List<dynamic> jsonData = json.decode(jsonString);

    setState(() {
      musicData = jsonData.map((data) => data as Map<String, dynamic>).toList();
    });

    if (jsonData.isNotEmpty) {
      String url = jsonData[currentSongIndex]['url'];
      try {
        await audioPlayer.setSource(AssetSource(url));
      // ignore: empty_catches
      } catch (error) {
      }
    }
  }

  void playCurrentSong() async {
    if(musicData.isNotEmpty) {
      String url = musicData[currentSongIndex]['url'];
      await audioPlayer.play(AssetSource(url));
    }
  }

  void playPreviousSong() {
    if (currentSongIndex > 0) {
      setState(() {
        currentSongIndex--;
      });
      playCurrentSong();
    }
  }
  
  void playNextSong() {
    if (currentSongIndex < musicData.length - 1) {
      setState(() {
        currentSongIndex++;
      });
      playCurrentSong();
    }
  }

  String getCurrentSongName() {
    if (musicData.isNotEmpty){
      return musicData[currentSongIndex]['name'];
    }else {
      return '';
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => setAudio());
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isMobile = size.width < 768;
    bool isHeightSmall = size.height < 600;
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Music Player'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_sharp),
            tooltip: 'Sair',
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              Routefly.navigate('/');
            },
          ),
          const SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints( maxWidth: 768),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: const AssetImage('assets/images/kirk-franklin.jpg'),
                      width: double.infinity,
                      height: isHeightSmall ? 220 : size.height * 0.45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(getCurrentSongName(),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Kirk Franklin',
                    style: TextStyle(fontSize: 20),
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                    },
                    inactiveColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(millisecondsToText(position)), // Call new function
                        Text(millisecondsToText(duration - position)), // Call new function
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentSongIndex > 0
                        ? CircleAvatar(
                            radius: 25,
                            child: IconButton(
                              icon: const Icon(
                                Icons.chevron_left
                              ),
                              iconSize: 32,
                              onPressed: () async {
                                playPreviousSong();
                              },
                            ),
                          )
                        : const SizedBox(width: 50),
                      const SizedBox(width: 4),
                      CircleAvatar(
                        radius: 35,
                        child: IconButton(
                          icon: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow
                          ),
                          iconSize: 50,
                          onPressed: () async {
                            if(isPlaying){
                              await audioPlayer.pause();
                            }else{
                              playCurrentSong();
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 4),
                      currentSongIndex < musicData.length - 1 ?
                        CircleAvatar(
                        radius: 25,
                        child: IconButton(
                          icon: const Icon(
                            Icons.chevron_right
                          ),
                          iconSize: 32,
                          onPressed: () async {
                            playNextSong();
                          },
                        ))
                        : const SizedBox(width: 50),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to convert milliseconds to MM:SS format
  String millisecondsToText(Duration duration) {
    int minutes = duration.inMinutes;
    int seconds = duration.inSeconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }
}
