import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/collections/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initstate.g.dart';
part 'initstate.freezed.dart';

@freezed
class InitStateData with _$InitStateData {
  factory InitStateData ({
    String? name,
    String? email,
    Gender? gender,
    DateTime? dateOfBirth,
    double? height,
    double? weight,
    GoalOpts? goal,
  }) = _InitStateData;
}

@riverpod
class InitState extends _$InitState {
  @override
  InitStateData build() {
    return InitStateData();
  }

  void setName(String? name) {
    state = InitStateData(
      name: name,
      email: state.email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      height: state.height,
      weight: state.weight,
      goal: state.goal,
    );
  }

  void setEmail(String? email) {
    state = InitStateData(
      name: state.name,
      email: email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      height: state.height,
      weight: state.weight,
      goal: state.goal,
    );
  }

  void setGender(Gender? gender) {
    state = InitStateData(
      name: state.name,
      email: state.email,
      gender: gender,
      dateOfBirth: state.dateOfBirth,
      height: state.height,
      weight: state.weight,
      goal: state.goal,
    );
  }

  void setDateOfBirth(DateTime? dateOfBirth) {
    state = InitStateData(
      name: state.name,
      email: state.email,
      gender: state.gender,
      dateOfBirth: dateOfBirth,
      height: state.height,
      weight: state.weight,
      goal: state.goal,
    );
  }

  void setHeight(double? height) {
    state = InitStateData(
      name: state.name,
      email: state.email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      height: height,
      weight: state.weight,
      goal: state.goal,
    );
  }

  void setWeight(double? weight) {
    state = InitStateData(
      name: state.name,
      email: state.email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      height: state.height,
      weight: weight,
      goal: state.goal,
    );
  }

  void setGoal(GoalOpts? goal) {
    state = InitStateData(
      name: state.name,
      email: state.email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      height: state.height,
      weight: state.weight,
      goal: goal,
    );
  }
}
