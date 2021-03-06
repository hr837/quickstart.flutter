import 'package:mobx/mobx.dart';
import 'package:loan_disposal_app/models/user.model.dart';

// Include generated file
part 'auth.store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  @observable
  UserModel user;

  @observable
  String token;

  @action
  void updateUser({UserModel user}) {
    this.user = user;
  }

  @action
  void updateToken({String token}) {
    this.token = token;
  }
}
