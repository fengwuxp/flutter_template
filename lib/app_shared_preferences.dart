import 'package:fengwuxp_dart_basic/index.dart';
import 'package:fengwuxp_dart_declarative_api/index.dart';

class MockSharedCommandSupport extends SharedPreferencesCommandSupport {
  MockSharedCommandSupport() : super(new BuiltJsonSerializers(null), toLineResolver);

  Future setCount(int val);

  Future<int> getCount() {
    return this.getInner<int>("getCount", resultType: int);
  }

  Future removeCount();
}
