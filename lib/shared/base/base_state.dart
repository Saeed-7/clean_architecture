library;

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

abstract class BaseState {}

class DoNothing extends BaseState {}

class Loading extends BaseState {}

class ListLoading extends BaseState {}

class ItemLoading extends BaseState {}

class Initial<T> extends BaseState {
  final T t;

  Initial({required this.t});
}

class AppendList<T> extends BaseState {
  final T t;
  final bool hasNextPage;

  AppendList({required this.t, this.hasNextPage = false});
}

class NullContent extends BaseState {}

class FailureState extends BaseState {
  String? errorMessage;

  FailureState({this.errorMessage});
}

class RelatedFailureState extends BaseState {
  String? errorMessage;

  RelatedFailureState({this.errorMessage});
}

class NoNetworkState extends BaseState {}

class AccountState extends BaseState {}

class LogOut extends BaseState {}
