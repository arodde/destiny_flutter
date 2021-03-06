//TOD: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TOD: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//TOD: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  List<Story> _storyDataEnglish = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  List<Story> _storyDataFrench = [
    Story(
        storyTitle:
            '?? Votre voiture a crev?? un pneu sur une route sinueuse au milieu de nulle part sans r??ception de t??l??phone portable. Vous d??cidez de faire de l\'auto-stop. Une camionnette rouill??e s\'arr??te ?? c??t?? de vous. Un homme avec un chapeau ?? larges bords et des yeux sans ??me vous ouvre la porti??re du passager et vous demande : " Besoin d`\'un tour, mon gar??on ? "',
        choice1: 'Je vais sauter dedans. Merci pour l\'aide !',
        choice2: 'Mieux vaut lui demander d\'abord s\'il est un meurtrier.'),
    Story(
        storyTitle: 'Il hoche lentement la t??te, indiff??rent ?? la question.',
        choice1: 'Au moins, il est honn??te. Je vais monter.',
        choice2: 'Attends, je sais comment changer un pneu.'),
    Story(
        storyTitle:
            'Alors que vous commencez ?? conduire, l\'??tranger commence ?? parler de sa relation avec sa m??re. Il devient de plus en plus en col??re de minute en minute. Il vous demande d\'ouvrir la bo??te ?? gants. ?? l\'int??rieur, vous trouverez un couteau ensanglant??, deux doigts coup??s et une cassette d\'Elton John. Il atteint la bo??te ?? gants.',
        choice1: 'J\'adore Elton John ! Donnez-lui la cassette.',
        choice2:
            'C\'est lui ou moi ! Vous prenez le couteau et le poignardez.'),
    Story(
        storyTitle:
            'Quelle? Un tel flic dehors! Saviez-vous que les accidents de la route sont la deuxi??me cause de d??c??s accidentel pour la plupart des groupes d\'??ge adultes ?',
        choice1: 'Recommencer',
        choice2: ''),
    Story(
        storyTitle:
            'Alors que vous franchissez le garde-corps et foncez vers les rochers d??chiquet??s en contrebas, vous r??fl??chissez ?? la sagesse douteuse de poignarder quelqu\'un alors qu\'il conduit une voiture dans laquelle vous vous trouvez.',
        choice1: 'Recommencer',
        choice2: ''),
    Story(
        storyTitle:
            'Vous vous liez avec le meurtrier en chantonnant des vers de "Pouvez-vous ressentir \'amour ce soir". Il vous d??pose ?? la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour jeter les corps. Vous r??pondez : "Essayez la jet??e"',
        choice1: 'Recommencer',
        choice2: '')
  ];
  int _storyNumber = 0;

//TOD: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData.elementAt(_storyNumber).storyTitle;
  }

  String getChoice1() {
    return _storyData.elementAt(_storyNumber).choice1;
  }

  String getChoice2() {
    return _storyData.elementAt(_storyNumber).choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber >= 0 && _storyNumber <= 2) {
      return true;
    } else {
      return false;
    }
  }

  void restart() {
    this._storyNumber = 0;
  }

  void chooseLanguage() {
    if (_storyData.elementAt(0).storyTitle ==
        _storyDataEnglish.elementAt(0).storyTitle) {
      _storyData = _storyDataFrench;
    } else {
      _storyData = _storyDataEnglish;
    }
  }
}

//TOD: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TOD: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TOD: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TOD: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TOD: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TOD: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TOD: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TOD: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TOD: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TOD: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
