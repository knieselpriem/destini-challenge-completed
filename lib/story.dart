class Story {
  String storyTitle;
  Choice choice1;
  Choice choice2;
  Story({
    required this.storyTitle,
    required this.choice1,
    required this.choice2
  });
}

/// data structure for choices and the appropriate follow up story
class Choice {
  String text;
  int? follower;  // can be null
  Choice({required this.text, this.follower});
}