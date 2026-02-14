import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/gold/presenation/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super( GoldInitialState());

  Future<void>  getGold()async
  {
    final res= await goldRepo.getGold();
    res.fold((error) async{
      emit(GoldErrorState(error));
      await Future.delayed(const Duration(seconds: 3));
    }, ( goldModel){
      emit(GoldSuccessState(goldModel));
    });
  }
}
