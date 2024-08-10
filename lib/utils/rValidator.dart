import 'package:flutter/material.dart';

class rValidator {
  //empty text validation\
  static String? emptyTextValidation(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    //regular expression for email validation

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    //check for minimum password length

    if (value.length < 6) {
      return 'Password Must be at least 6 charachter long.';
    }

    //check uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password Must contain atleast  one uppercase letter';
    }

    //check for numbers

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password contain at least one number";
    }

    //check special characters

    if (!value.contains(RegExp(r'[!@#$%^&*(),.{}|<>]'))) {
      return "Password contain at least one special character.";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    //regular expresison for phone number validation(assuming 10 digit us phone number format)

    final phoneRegExp=RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch((value))){
      return 'Invalid phone number format (10 digit required).';
    }
  }
}
