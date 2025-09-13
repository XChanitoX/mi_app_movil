import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mi_app_movil/main.dart';

void main() {
  testWidgets('Chat app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ChatApp());

    expect(find.text('ChatApp'), findsOneWidget);
    expect(find.text('Iniciar Sesión'), findsOneWidget);
  });
}
