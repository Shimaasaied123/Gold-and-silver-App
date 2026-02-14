import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constant.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/silver/data/models/silver_model.dart';

class SilverRepo {

Future<Either<String,SilverModel>>getsilver()async
{
  try
  {
final res=await DioHelper.getData(endPoint: AppConstants.silverEndPoint);
  return Right(SilverModel.fromjson(res.data));
  }
   
catch(e){
  return Left(e.toString());
}
}
}