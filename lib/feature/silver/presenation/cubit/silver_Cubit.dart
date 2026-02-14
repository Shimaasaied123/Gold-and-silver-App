import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:goldy/feature/silver/data/repo/silver_repo.dart';
import 'package:goldy/feature/silver/presenation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverStates> {
  SilverCubit(this.silverRepo) : super(SilverInitialState());
  final SilverRepo silverRepo;
  Future<void>getSilver()async
  {
   final  response=await silverRepo.getsilver();
   response.fold((error)
   {
    emit(SilverErrorState(error));
   }, (silverModel)
   {
    emit(SilverSuccessState(silverModel));
   });
  }
}