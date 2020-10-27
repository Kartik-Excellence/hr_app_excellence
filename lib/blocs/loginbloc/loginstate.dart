import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  LoginState();
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoginSuccess extends LoginState {
  String message;
  LoginSuccess(this.message);
  @override
  List<Object> get props => [message];
}

class LoginFalure extends LoginState {
  String message;
  LoginFalure(this.message);
  @override
  List<Object> get props => [message];
}
