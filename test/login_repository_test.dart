import 'package:flutter_test/flutter_test.dart';
import 'package:gd13_unittesting_1129/repository/login_repository.dart';

void main() {
  test('login success', () async {
    final hasil = await LoginRepository.logintesting(
      username: 'intan_1129', password: 'c_1129');
    expect(hasil?.data.username, equals('intan_1129'));
    expect(hasil?.data.password, equals('c_1129'));  
  });

 test('login failed', () async {
    final result = await LoginRepository.logintesting(
      username: 'invalid', password: 'invalid');
    expect(result, null); 
  });
}