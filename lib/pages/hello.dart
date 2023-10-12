import 'package:jaspr/html.dart';
import 'package:jaspr/jaspr.dart';

part 'hello.g.dart';

@client
class Hello extends StatelessComponent with _$Hello {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Button(
      label: 'Say Hi!',
      onPressed: () {
        print("Hello World");
      },
    );
  }
}

class Button extends StatelessComponent {
  const Button({required this.label, required this.onPressed, Key? key}) : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'button',
      events: {'click': (e) => onPressed()},
      child: Text(label),
    );
  }
}