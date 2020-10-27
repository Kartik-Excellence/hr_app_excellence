import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginWithCredentials extends LoginEvent {
  String email;
  String password;
  LoginWithCredentials(this.email, this.password);
  @override
  List<Object> get props => [email, password];
}
