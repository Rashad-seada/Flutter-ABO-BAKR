import 'package:dartz/dartz.dart';
import 'package:smart_soft/core/di/app_module.dart';
import 'package:smart_soft/features/auth/domain/model/user_model.dart';
import 'package:smart_soft/features/auth/domain/repo/auth_repo.dart';

import '../../../../core/errors/failure.dart';

class ResetPasswordUseCase {

  AuthRepo repo = getIt<AuthRepo>();

  Future<Either<Failure, void>> call(String email) async {
    return await repo.resetPassword(email: email);
  }

}