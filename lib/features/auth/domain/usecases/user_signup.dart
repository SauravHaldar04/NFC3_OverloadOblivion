

import 'package:fpdart/fpdart.dart';
import 'package:nfc3_overload_oblivion/common/entities/user_entity.dart';
import 'package:nfc3_overload_oblivion/common/error/failure.dart';
import 'package:nfc3_overload_oblivion/common/usecase/usecase.dart';
import 'package:nfc3_overload_oblivion/features/auth/domain/repository/auth_repository.dart';

class UserSignup implements Usecase<User, UserSignupParams> {
  final AuthRepository authRepository;
  const UserSignup(this.authRepository);
  @override
  Future<Either<Failure, User>> call(UserSignupParams params) async {
    return await authRepository.signInWithEmailAndPassword(
      lastName: params.lastName, firstName: params.firstName, email: params.email, password: params.password);
  }
}

class UserSignupParams {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  UserSignupParams(
      {required this.firstName,required this.lastName,  required this.email, required this.password});

}
