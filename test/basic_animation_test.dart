import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/lib/animations/basic_animation.dart';

void main() {
  testWidgets('BasicAnimation animates opacity', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: BasicAnimation()));
    expect(find.byType(Opacity), findsOneWidget);
  });
}