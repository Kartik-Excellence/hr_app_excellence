import 'package:equatable/equatable.dart';

class ProfileState extends Equatable {
  ProfileState();
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class ProfileInitial extends ProfileState{}

class ProfileLoading extends ProfileState{

}
class ProfileSuccess extends ProfileState{}
