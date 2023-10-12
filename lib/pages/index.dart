import 'package:jaspr/html.dart';
import 'package:jaspr/jaspr.dart';

part 'index.g.dart';

@client
class Index extends StatelessComponent with _$Index {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'div',
      child: SimpleCard(title: "ChitChat", message: "You have a new message!"),
      styles: Styles.box(
        padding: EdgeInsets.symmetric(vertical: Unit.pixels(30)),
      ),
    );
  }
}

class SimpleCard extends StatelessComponent {
  const SimpleCard({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      [
        div(
          classes: 'p-6 max-w-sm mx-auto bg-white rounded-xl shadow-lg flex items-center space-x-4'
              .split(' '),
          [
            div(classes: [
              'shrink-0'
            ], [
              img(classes: 'h-12 w-12'.split(' '), src: '/img/logo.svg', alt: '$title Logo'),
            ]),
            div([
              div(classes: 'text-xl font-medium text-black'.split(' '), [text(title)]),
              p(classes: ['text-slate-500'], [text(message)]),
            ])
          ],
        )
      ],
      href: '/hello',
    );
  }
}
