
class User {
  final String userID;
  final String firstName;
  final String email;
  final String profilePictureURL;

  User({
    this.userID,
    this.firstName,
    this.email,
    this.profilePictureURL,
  });

  Map<String, Object> toJson(User user) {
    return {
      userID: user.userID,
      firstName: user.firstName,
      email: user.email == null ? '' : user.email,
      profilePictureURL: user.profilePictureURL,
    };
  }

}