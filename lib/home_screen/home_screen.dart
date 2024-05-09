import 'package:flutter/material.dart';
import 'package:musicplayer/utils/styles.dart';

class MonkeyMusic extends StatelessWidget {
  const MonkeyMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              50.height(),
              Container(
                height: 600,
                width: 444,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/monkay.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.play_circle,
                  color: Colors.blueAccent,
                  size: 100,
                ),
              ),
              30.height(),
              Text(
                "Podcast",
                style: AppTextStyles.HeadLineblack,
              ),
              Text(
                "Listen Your Favourite Podcast Anywhere,Anytime ",
                textAlign: TextAlign.center,
                style: AppTextStyles.Paragraphblack,
              ),
              30.height(),
              Container(
                height: 100,
                width: double.infinity,
                decoration: AppDecorationsContainer.decorContainer,
                child: Center(
                  child: Text(
                    "Log in",
                    style: AppTextStyles.ParagraphbWhite,
                  ),
                ),
              ),
              20.height(),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueAccent,
                  fontSize: 34,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
