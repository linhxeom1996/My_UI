import 'package:code_base/models/product_model.dart';
import 'package:code_base/screens/page_home/home_event.dart';
import 'package:code_base/screens/page_home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on((event, emit) {});
  }

  List<ProductModel> listExclusive = [
    ProductModel(
        image: "assets/images/home_img_banana.png",
        name: "Organic Bananas",
        price: 4.99,
        qualityPieces: "7pcs, Priceg"),
    ProductModel(
        image: "assets/images/home_img_beef.png",
        name: "Red Apple",
        price: 4.99,
        qualityPieces: "7kg, Priceg"),
    ProductModel(
        image: "assets/images/home_img_banana.png",
        name: "Strawberry",
        price: 6.0,
        qualityPieces: "1kg, Priceg"),
    ProductModel(
        image: "assets/images/home_img_banana.png",
        name: "American grapes",
        price: 8.65,
        qualityPieces: "1kg, Priceg")
  ];
}
