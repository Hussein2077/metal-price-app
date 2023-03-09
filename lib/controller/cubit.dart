import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/controller/states.dart';
import 'package:metal_price/network/dio_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
   double? gold;
   double? silver;

  getGoldPrice() {
    emit(LoadingState());
    DioHelper.getData('XAU/EGP/').then((value) {
      gold = value.data['price'];
      print(gold.toString());
      emit(GetGoldPrice());
    }).catchError((e) {
      print(e.toString());
      emit(GetGoldPriceFailed());
    });
  }

  getSilverPrice() {
    emit(LoadingState());

    DioHelper.getData('XAG/EGP/').then((value) {
      silver = value.data['price'];
      print(gold.toString());
      emit(GetSilverPrice());
    }).catchError((e) {
      emit(GetSilverPrice());
      print(e.toString());
    });
  }
}
