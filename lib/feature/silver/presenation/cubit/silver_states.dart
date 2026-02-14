import 'package:goldy/feature/silver/data/models/silver_model.dart';

abstract class SilverStates {}

class SilverInitialState extends SilverStates {}
class SilverLoadingState extends SilverStates {}
class SilverSuccessState extends SilverStates {
  final SilverModel silverModel;
  SilverSuccessState(this.silverModel);
}
class SilverErrorState extends SilverStates {
  final String errorMessage;

  SilverErrorState(this.errorMessage);
}