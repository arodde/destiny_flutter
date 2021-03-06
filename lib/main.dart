import 'package:flutter/material.dart';
import 'story_brain.dart';
//TOD: Step 15 - ----> OK <----  Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destiny());

class Destiny extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
//TOD: Step 9 - Create a new storyBrain object from the StoryBrain class.
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //TOD: Step 1 - Add background.png to this Container as a background image.
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Expanded(
              //   flex: 1,
              //   child: TextButton(
              //     onPressed: () => showDialog<String>(
              //       context: context,
              //       builder: (BuildContext context) => AlertDialog(
              //         title: const Text('AlertDialog Title'),
              //         content: const Text('AlertDialog description'),
              //         actions: <Widget>[
              //           TextButton(
              //             onPressed: () => storyBrain.chooseLanguage(false),
              //             child: const Text('Cancel'),
              //           ),
              //           TextButton(
              //             onPressed: () => storyBrain.chooseLanguage(false),
              //             child: const Text('OK'),
              //           ),
              //         ],
              //       ),
              //     ),
              //     child: const Text('Show Dialog'),
              //   ),
              // ),
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TOD: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        //Choice 1 made by user.
                        //TOD: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                        storyBrain.nextStory(1);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      //TOD: Step 13 - Use the storyBrain to get the text for choice 1.
                      storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TOD: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TOD: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        //Choice 2 made by user.
                        //TOD: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                        storyBrain.nextStory(2);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      //TOD: Step 14 - Use the storyBrain to get the text for choice 2.
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            storyBrain.chooseLanguage();
          });
        },
        hoverElevation: 12.0,
        child: const Icon(Icons.mood),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
    );
  }
}

//TOD: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TOD: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
