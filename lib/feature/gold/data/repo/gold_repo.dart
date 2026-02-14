import 'package:dartz/dartz.dart';

import 'package:goldy/core/networking/api_constant.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/gold/data/models/gold_model.dart';
class GoldRepo {
Future<Either<String,GoldModel>>getGold()async {
  // Simulate fetching gold price from an API
 try{
  final res= await DioHelper.getData(endPoint: AppConstants.goldEndPoint);
  return Right(GoldModel.fromjson(res.data));
 }catch(e){
  return Left(e.toString());
}
}
}