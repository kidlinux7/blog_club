class ExploreTodayModel{
  String name;
  String image;

  ExploreTodayModel({required this.name, required this.image});
}

class ExploreToday{
  List<ExploreTodayModel> students = [
      ExploreTodayModel(name: 'Nuria', image: 'lady_1.jpg'),
  ];
}