abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class ChangeIndexState extends HomeStates {}
 class GetProductSuccessState extends HomeStates{}
class GetProductErrorState extends HomeStates{
  final String error;
  GetProductErrorState(this.error);
}
class GetHomeLoadingState extends HomeStates {}

class SwapBetweenLoginAndRegisterState extends HomeStates {}
