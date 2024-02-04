import 'package:dartz/dartz.dart';
import 'package:smart_soft/core/di/app_module.dart';
import 'package:smart_soft/features/auth/domain/model/user_model.dart';
import 'package:smart_soft/features/auth/domain/repo/auth_repo.dart';
import 'package:smart_soft/features/auth/domain/usecases/get_user_use_case.dart';

import '../../../../core/errors/failure.dart';

class SelectWhoAmIUseCase {

  AuthRepo repo = getIt<AuthRepo>();
  GetUserUseCase getUserUseCase = getIt<GetUserUseCase>();

  Future<Either<Failure, void>> call(String whoAmI) {
    return getUserUseCase.call().then((value) async  => value.fold(
            (error) {
              return left(InternalFailure(
                  error.message,
                  failureCode: 1
              ));
            },
            (user) async {
              if(user != null){
                return await repo.selectWhoAmI(id: user.id!, whoAmI: whoAmI);

              } else {
                return left(LocalDataFailure(
                    "Please Sign in to be able to Select Who are you",
                    failureCode: 1
                ));
              }
            }
    ));
  }

}