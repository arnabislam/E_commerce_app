import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/device/formatter.dart';

class UserModel {
  //keep those values final which you do not want to update

  final String id;
  String firstName;
  final String userName;
  final String email;
  String lastName;
  String phoneNumber;
  String profilePicture;

  //constructor for usermodel

  UserModel(
      {required this.id,
      required this.userName,
      required this.email,
      required this.phoneNumber,
      required this.lastName,
      required this.firstName,
      required this.profilePicture});

  //helper function to get the full name

  String get fullName => '$firstName $lastName ';

//helper function to format phoneNumber

  String get formatePhoneNumber => rFormatter.fotmatPhoneNumber(phoneNumber);

//static function to split full name into first and last name
  static List<String> nameParts(fullName) => fullName.split(" ");

  //static function to generate a username from the full name

  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : " ";
    String camelCaseUserName =
        "$firstName$lastName"; //combind first and last name
    String userCamelWithPrefix = "cwt_$camelCaseUserName"; //add "cwt_" prefix
    return userCamelWithPrefix;
  }

  /// static function to create empty use model

  static UserModel empty() => UserModel(
      id: '',
      userName: '',
      email: '',
      phoneNumber: '',
      lastName: '',
      firstName: '',
      profilePicture: '');

  ///convert model to json structure for storing  data in firebase

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture
    };
  }

  ///factory method to create a UserModel from a firebase document snapshot

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    if (data != null) {
      return UserModel(
        id: document.id,
        userName: data['UserName'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        lastName: data['LastName'] ?? '',
        firstName: data['FirstName'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      // Handle the case where data is null
      return UserModel.empty();
    }
  }

}
