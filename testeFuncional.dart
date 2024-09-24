import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Navigation Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ClinicaApp(),
    ));

    //verifica se a tela inicial é exibida
    expect(find.text('Saúde +'), findsOneWidget);

    //simula o clique no botão 'Médico'
    await tester.tap(find.text('Médico'));
    await tester.pumpAndSettle(); //espera a animação de navegação terminar

    expect(find.text('Saúde+Daniel'), findsOneWidget);
  });
}
