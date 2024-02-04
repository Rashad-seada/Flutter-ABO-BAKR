import 'package:dartz/dartz.dart';
import 'package:smart_soft/core/di/app_module.dart';
import 'package:smart_soft/features/auth/domain/model/user_model.dart';
import 'package:smart_soft/features/auth/domain/repo/auth_repo.dart';
import 'package:smart_soft/features/auth/domain/usecases/set_user_use_case.dart';

import '../../../../core/errors/failure.dart';

class SignInUseCase {

  AuthRepo repo = getIt<AuthRepo>();
  SetUserUseCase setUserUseCase = getIt<SetUserUseCase>();

  Future<Either<Failure, UserModel>> call(String email,String password) async {

    return await repo.signIn(email: email, password: password).then((value) {
      value.fold(
              (error) {

              },
              (user) {
                setUserUseCase.call(user);
              }
      );
      return value;
    });
  }

}