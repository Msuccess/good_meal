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

  Map<String, Object> toJson() {
    return {
      'userID': userID,
      'firstName': firstName,
      'email': email == null ? '' : email,
      'profilePictureURL': profilePictureURL,
      'appIdentifier': 'flutter-onboarding'
    };
  }

}