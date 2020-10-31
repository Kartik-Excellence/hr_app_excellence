import 'package:bloc/bloc.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profileevent.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profilestate.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial());
  
  void onTransition(Transition<ProfileEvent, ProfileState> transition) {
    print(transition.toString());
    super.onTransition(transition);
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ProfileLoadingEvent) {
      final profile=await fetchProfile();
      yield ProfileSuccess(profile);
    }
  }
}
