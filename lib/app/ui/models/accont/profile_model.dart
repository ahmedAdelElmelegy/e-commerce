class ProfileModel {
  final String image;
  final String title;
  final String data;
  final Function()? fun;

  ProfileModel(this.fun,
      {required this.image, required this.title, required this.data});
}
