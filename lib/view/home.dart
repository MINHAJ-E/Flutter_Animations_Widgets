import 'package:animation/utils/data.dart';
import 'package:animation/view/explecite_animations/animated_builder.dart';
import 'package:animation/view/implecite_animations/animated_alighn.dart';
import 'package:animation/view/implecite_animations/animated_container.dart';
import 'package:animation/view/implecite_animations/animated_container_screen.dart';
import 'package:animation/view/implecite_animations/animated_crossfade.dart';
import 'package:animation/view/implecite_animations/animated_default_textstyle.dart';
import 'package:animation/view/implecite_animations/animated_opacity.dart';
import 'package:animation/view/hero_detailes.dart';
import 'package:animation/view/explecite_animations/animated_icon.dart';
import 'package:animation/view/implecite_animations/animated_positioned.dart';
import 'package:animation/view/explecite_animations/posiotioned_transition.dart';
import 'package:animation/view/explecite_animations/tween_animation.dart';
import 'package:animation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// Import your other view classes here

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final datas = data[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              // return Detail(data: datas);
                              return Detail(
                                data: datas,
                              );
                            },
                          ));
                        },
                        child: Hero(
                          tag: datas.id!,
                          child: Container(
                            height: 120,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 203, 203),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(datas.image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    datas.name!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MuButton(
                  text: "tweeen",
                  navigation: TweenAnimationnn(),
                ),
                MuButton(
                  text: "align",
                  navigation: AnimatedAlighnnn(),
                ),
                MuButton(
                  text: "builder",
                  navigation: AnimatedBuilderr(),
                ),
                MuButton(
                  text: "container size",
                  navigation: AnimatedContainerScreen(),
                ),
                MuButton(
                  text: "container",
                  navigation: AnimatedContainerr(),
                ),
                MuButton(
                  text: "tweeen",
                  navigation: TweenAnimationnn(),
                ),
                MuButton(
                  text: "crosfade",
                  navigation: AnimatedCrossFadeee(),
                ),
                MuButton(
                  text: "defaulttext",
                  navigation: AnimatedDeafultTextStyleee(),
                ),
                MuButton(
                  text: "icon",
                  navigation: AnimatedIconsss(),
                ),
                MuButton(
                  text: "positioned",
                  navigation: AnimatedPositioneddd(),
                ),
                MuButton(
                  text: "tween transition",
                  navigation: AnimationScreen(),
                ),
                MuButton(
                  text: "opacity",
                  navigation: AnimatedOpacityy(),
                ),
                // MuButton(
                //   text: "galaxy",
                //   navigation: GalaxyAnim(),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
