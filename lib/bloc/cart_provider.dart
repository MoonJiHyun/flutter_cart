import 'package:flutter/widgets.dart';
import 'package:flutter_cart/bloc/cart_bloc.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBloc;

  CartProvider({Key key, CartBloc cartBloc, Widget child})
      : cartBloc = cartBloc ?? CartBloc(), // 외부에서 전달받지 않으면 강제로 생성자 호출
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static CartBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(CartProvider) as CartProvider).cartBloc;
}
