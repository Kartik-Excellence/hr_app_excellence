import 'package:bloc/bloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginevent.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginstate.dart';
import 'package:hr_app_excellence/requests/loginrequest.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  void onTransition(Transition<LoginEvent, LoginState> transition) {
    super.onTransition(transition);
    
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginWithCredentials) {
      yield* _mapLoginWithCredentialsToState(event);
    }
  }

  Stream<LoginState> _mapLoginWithCredentialsToState(
      LoginWithCredentials event) async* {
    var responseError;
    await fetchData(event.username, event.password).then((value) {
      responseError = value.error;
    });
    if (responseError == 0) {
      yield LoginSuccess('SUCCESS');
    } else if (responseError == 1) {
      yield LoginFalure('FAIL');
    }
  }
}
