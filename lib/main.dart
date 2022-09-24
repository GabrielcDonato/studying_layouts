import 'package:flutter/material.dart';
import 'package:studying_layout/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:studying_layout/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:studying_layout/pages/cidades/cidades_page.dart';
import 'package:studying_layout/pages/circle_avatar/circle_avatar_page.dart';
import 'package:studying_layout/pages/colors/colors_page.dart';
import 'package:studying_layout/pages/container/container_page.dart';
import 'package:studying_layout/pages/dialogs/dialogs_page.dart';
import 'package:studying_layout/pages/forms/forms_page.dart';
import 'package:studying_layout/pages/layout_builder/layout_builder_page.dart';
import 'package:studying_layout/pages/material_banner/material_banner_page.dart';
import 'package:studying_layout/pages/scrolls/list_View_page.dart';
import 'package:studying_layout/pages/scrolls/single_child_scroll_view_page.dart';
import 'package:studying_layout/pages/stack/stack_page.dart';
import 'package:studying_layout/pages/stack/stack_page2.dart';

import 'pages/home/home_page.dart';
import 'pages/media_query/media_query_page.dart';
import 'pages/rows_columns/rows_column_page.dart';
import 'pages/snackbar/snackbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (route) => HomePage(),
        '/container': (route) => ContainerPage(),
        '/rows_columns': (route) => RowsColumnPage(),
        '/media_query': (route) => MediaQueryPage(),
        '/layout_builder': (route) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (route) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (route) => SingleChildScrollViewPage(),
        '/scrolls/list_view': (route) => ListViewPage(),
        '/dialogs': (route) => DialogsPage(),
        '/snackbars': (route) => SnackBarPage(),
        '/forms': (route) => FormsPage(),
        '/cidades': (route) => CidadesPage(),
        '/stack': (route) => StackPage(),
        '/stack2': (route) => StackPage2(),
        '/bottom_navigator_bar': (route) => BottomNavigatorBarPage(),
        '/circle_avatar_page': (route) => CircleAvatarPage(),
        '/colors_page': (route) => ColorsPage(),
        '/material_banner_page': (route) => MaterialBannerPage(),
      },
    );
  }
}
