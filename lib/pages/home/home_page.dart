import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottom_navigator_bar,
  circle_avatar_page,
  colors_page,
  material_banner_page,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: Icon(Icons.restaurant_menu),
            tooltip: "Selecione um item do menu",
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;

                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrolls_list_view:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.scrolls_list_view:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.bottom_navigator_bar:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar');
                  break;
                case PopupMenuPages.circle_avatar_page:
                  Navigator.of(context).pushNamed('/circle_avatar_page');
                  break;
                case PopupMenuPages.colors_page:
                  Navigator.of(context).pushNamed('/colors_page');
                  break;
                case PopupMenuPages.material_banner_page:
                  Navigator.of(context).pushNamed('/material_banner_page');
                  break;

                default:
              }
            },
            itemBuilder: (context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text("Container"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text("Rows & Column"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text("MediaQuery"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text("LayoutBuilder"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto,
                  child: Text("Botões e Rotação de Texto"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_single_child,
                  child: Text("Scroll SingleChild"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_list_view,
                  child: Text("Scroll ListView"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text("Dialogs"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text("Snackbars"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text("Forms"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text("Cidades"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text("Stack"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text("Stack2"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottom_navigator_bar,
                  child: Text("BottomNavigatorBar"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circle_avatar_page,
                  child: Text("CircleAvatar"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors_page,
                  child: Text("Colors"),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.material_banner_page,
                  child: Text("MaterialBanner"),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
