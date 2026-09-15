import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/lib/views/basic_view.dart';

void main() {
  testWidgets('BasicView displays a FlutterLogo', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: BasicView()));
    expect(find.byType(FlutterLogo), findsOneWidget);
  });
}