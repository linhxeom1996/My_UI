import 'package:code_base/screens/page_cart/cart_event.dart';
import 'package:code_base/screens/page_cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {}
}
