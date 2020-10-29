import 'package:bloc/bloc.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profileevent.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profilestate.dart';

class ProfileBloc extends Bloc<ProfileEvent,ProfileState>{
  ProfileBloc() : super(ProfileState());


  void onTransition(Transition<ProfileEvent, ProfileState> transition) {
    super.onTransition(transition);
    
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
  
}