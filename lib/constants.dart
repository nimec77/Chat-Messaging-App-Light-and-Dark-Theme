import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const kPrimaryColor = Color(0xFF00BF6D);
const kSecondaryColor = Color(0xFFFE9901);
const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarningColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 16.0;

const kLogoDarkTheme = 'assets/icons/only_logo_dark_theme.svg';
const kLogoLightTheme = 'assets/icons/only_logo_light_theme.svg';

const kRequiredField = 'This field is required';
const kInvalidEmail = 'Enter a valid email address';

final kPasswordValidator = MultiValidator(
  [
    RequiredValidator(errorText: kRequiredField),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ],
);

const InputDecoration kOutInputDecoration = InputDecoration(
  filled: false,
  border: UnderlineInputBorder(),
  hintText: '0',
);

// For demo

final kDemoContactsImage = List.generate(5, (index) => 'assets/images/user_${index + 1}.png');
