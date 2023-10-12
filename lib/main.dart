@Import.onWeb('dart:html', show: [#window])
import 'package:jaspr/html.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:sanihaq.github.io/pages/hello.dart';
import './pages/index.dart';

void main() {
  runApp(
    Document(
      title: 'SANI HAQ',
      head: [
        link(href: 'styles.css', rel: 'stylesheet'),
      ],
      styles: [
        StyleRule.import('https://fonts.googleapis.com/css?family=Roboto'),
        StyleRule(
          selector: const Selector.list([Selector.tag('html'), Selector.tag('body')]),
          styles: Styles.combine([
            const Styles.text(
              fontFamily: FontFamily.list([FontFamily('Roboto'), FontFamilies.sansSerif]),
            ),
            Styles.box(
              width: 100.percent,
              height: 100.percent,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            ),
          ]),
        ),
      ],
      body: Router(
        routes: [
          Route(path: '/', builder: (_, __) => Index()),
          Route(path: '/hello', builder: (_, __) => Hello()),
        ],
      ),
    ),
  );
}
