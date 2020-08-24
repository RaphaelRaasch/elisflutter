import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:elis/app/modules/caso_clinico/caso/caso_controller.dart';
import 'package:elis/app/modules/caso_clinico/caso_clinico_module.dart';

void main() {
  initModule(CasoClinicoModule());
  // CasoController caso;
  //
  setUp(() {
    //     caso = CasoClinicoModule.to.get<CasoController>();
  });

  group('CasoController Test', () {
    //   test("First Test", () {
    //     expect(caso, isInstanceOf<CasoController>());
    //   });

    //   test("Set Value", () {
    //     expect(caso.value, equals(0));
    //     caso.increment();
    //     expect(caso.value, equals(1));
    //   });
  });
}
