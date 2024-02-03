import 'package:kcalc/collections/user.dart';

double getBMR(double height, double weight, double age, Gender gender) {
  if (gender == Gender.male) {
    return (10 * weight) + (6.25 * height) - (5 * age) + 5;
  }

  return (10 * weight) + (6.25 * height) - (5 * age) - 161;
}