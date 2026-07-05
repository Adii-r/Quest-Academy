import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quest_academy/screens/reward_screen.dart';

class AudioQuestScreen extends StatefulWidget {
  const AudioQuestScreen({super.key});

  @override
  State<AudioQuestScreen> createState() => _AudioQuestScreenState();
}

class _AudioQuestScreenState extends State<AudioQuestScreen> {
  final AudioPlayer player = AudioPlayer();
  double volume = 0.7;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    initAudio();
  }

  Future<void> initAudio() async {
    try {
      await player.setAsset("assets/audio/audio.mp3");
      duration = player.duration ?? Duration.zero;
      player.positionStream.listen((p) {
        setState(() {
          position = p;
        });
      });

      player.playerStateStream.listen((state) async {
        setState(() {
          isPlaying = state.playing;
        });

        if (state.processingState == ProcessingState.completed) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => RewardPage(),
            ),
          );
        }
      });
    } catch (e) {
      debugPrint("Audio error: $e");
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Lost Ruins Treasure",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/audio.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Welcome Wild",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "${position.toString().split('.').first} / ${duration.toString().split('.').first}",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Slider(
                value: position.inSeconds.toDouble(),
                max: duration.inSeconds.toDouble() == 0
                    ? 1
                    : duration.inSeconds.toDouble(),
                activeColor: Color(0xFFA300A3),
                inactiveColor: Colors.grey.shade300,
                onChanged: (value) async {
                  await player.seek(Duration(seconds: value.toInt()));
                },
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                IconButton(
                  icon: Icon(Icons.fast_rewind),
                  iconSize: 35,
                  onPressed: () async {
                    final newPos = position - const Duration(seconds: 10);
                    await player.seek(newPos);
                  },
                ),

                SizedBox(width: 10),

                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFA300A3),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () async {
                      if (player.playing) {
                        await player.pause();
                      } else {
                        await player.play();
                      }
                    },
                  ),
                ),

                SizedBox(width: 10),

                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  iconSize: 35,
                  onPressed: () async {
                    final newPos = position + const Duration(seconds: 10);
                    await player.seek(newPos);
                  },
                ),
              ],
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [

                  Icon(Icons.volume_down,size: 35,),

                  Expanded(
                    child: Slider(
                      value: volume,
                      onChanged: (value) {
                        setState(() {
                          volume = value;
                        });
                        player.setVolume(value);
                      },
                      activeColor: Color(0xFFA300A3),
                      inactiveColor: Colors.grey.shade300,
                    ),
                  ),

                  Icon(Icons.volume_up, size: 35),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}