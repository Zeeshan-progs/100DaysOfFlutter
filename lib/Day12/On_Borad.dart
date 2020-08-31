import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NewOnBoard extends StatelessWidget {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Provider<OnBoardState>(
      create: (_) => OnBoardState(),
      child: Scaffold(
        body: OnBoard(
          onSkip: () {
            print('Skipped');
          },
          onDone: () {
            print('Done Tapped');
          },
          pageController: _pageController,
          onBoardData: onBoardData,
          titleStyles: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.15,
          ),
          descriptionStyles: TextStyle(
            fontSize: 16,
            color: Colors.blue.shade300,
          ),
          pageIndicatorStyle: PageIndicatorStyle(
            width: 100,
            inactiveColor: Colors.deepPurple,
            activeColor: Colors.purple,
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12),
          ),
          skipButton: FlatButton(
            onPressed: () {
              print('skipped button tapped');
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          nextButton: Consumer<OnBoardState>(
            builder: (BuildContext context, OnBoardState state,
                Widget child) {
              return InkWell(
                onTap: () => _onNextTap(state),
                child: Container(
                  width: 230,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.deepPurple,
                      ],
                    ),
                  ),
                  child: Text(
                    state.isLastPage ? "Done" : "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      print("done");
    }
  }

  final List<OnBoardModel> onBoardData = [
    OnBoardModel(
      title: "Set your own goals and get better",
      description:
          "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets\n3.png",
    ),
    OnBoardModel(
      title: "Track your progress with statistics",
      description:
          "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets\n2.png',
    ),
    OnBoardModel(
      title: "Create photo comparisons and share your results",
      description:
          "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets\n1.png',
    ),
  ];
}
