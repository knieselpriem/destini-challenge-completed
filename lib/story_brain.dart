import 'package:destini_challenge_starting/story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
      storyTitle:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: Choice(text: 'I\'ll hop in. Thanks for the help!', follower: 2),
      choice2: Choice(
          text: 'Better ask him if he\'s a murderer first.', follower: 1),
    ),
    Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1:
          Choice(text: 'At least he\'s honest. I\'ll climb in.', follower: 2),
      choice2: Choice(text: 'Wait, I know how to change a tire.', follower: 3),
    ),
    Story(
      storyTitle:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: Choice(
          text: 'I love Elton John! Hand him the cassette tape.', follower: 5),
      choice2: Choice(
          text: 'It\'s him or me! You take the knife and stab him.',
          follower: 4),
    ),
    Story(
      storyTitle:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: Choice(text: 'Restart'),
      choice2: Choice(text: ''),
    ),
    Story(
      storyTitle:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: Choice(text: 'Restart'),
      choice2: Choice(text: ''),
    ),
    Story(
      storyTitle:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: Choice(text: 'Restart'),
      choice2: Choice(text: ''),
    ),
  ];

  /// return the first story title
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1.text;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2.text;
  }

  void nextStory(int choiceNumber) {
    int? next_index;
    if (choiceNumber == 1) {
      next_index = _storyData[_storyNumber].choice1.follower;
    } else if (choiceNumber == 2) {
      next_index = _storyData[_storyNumber].choice2.follower;
    } else {
      // invalid choice number!
    }
    if (next_index == null) {
      restart();
    } else {
      _storyNumber = next_index;
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible(int choiceNumber) {
    int? next_index;
    if (choiceNumber == 1) {
      next_index = _storyData[_storyNumber].choice1.follower;
    } else if (choiceNumber == 2) {
      next_index = _storyData[_storyNumber].choice2.follower;
    } else {
      // invalid choice number!
    }
    return (next_index != null);
  }
}
