part of 'auth_cubit.dart';

@immutable
abstract class AuthState{
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {



}