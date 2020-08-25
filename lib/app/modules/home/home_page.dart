import 'package:elis/app/modules/home/widgets/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorA,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
=======
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: sw * 0.2,
                  color: colorB,
                ),
                ListTile(
                  leading: Icon(
                    Icons.message,
                    color: colorC,
                  ),
                  title: Text("Caso clínico"),
                  onTap: () => Modular.to.pushNamed('/case'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.book,
                    color: colorC,
                  ),
                  title: Text("Curso"),
                  onTap: () => Modular.to.pushNamed('/curse'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_add,
                    color: colorC,
                  ),
                  title: Text("Novo psicologo"),
                  onTap: () => Modular.to.pushNamed('/profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.people,
                    color: colorC,
                  ),
                  title: Text("Currículos"),
                  onTap: () => Modular.to.pushNamed('/profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.comment,
                    color: colorC,
                  ),
                  title: Text("Ranking participações"),
                  onTap: () => Modular.to.pushNamed('/profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.assessment,
                    color: colorC,
                  ),
                  title: Text("Ranking cursos"),
                  onTap: () => Modular.to.pushNamed('/profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.assessment,
                    color: colorC,
                  ),
                  title: Text("Ranking casos clínicos"),
                  onTap: () => Modular.to.pushNamed('/profile'),
                )
              ],
            ),
          ),
          backgroundColor: colorB,
          body: Observer(
            builder: (context) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBarWidget(
                          title: user.user.email,
                        ),
                      ],
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                      height: sh * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(sh * 0.03),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: sh * 0.05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.video_library,
                                      color: colorC,
                                    ),
                                    onPressed: () {
                                      controller.type = "video";
                                    }),
                                IconButton(
                                    icon: Icon(
                                      Icons.person,
                                      color: colorC,
                                    ),
                                    onPressed: () {
                                      controller.type = "profile";
                                    }),
                                IconButton(
                                    icon: Icon(
                                      Icons.message,
                                      color: colorC,
                                    ),
                                    onPressed: () {
                                      controller.type = "article";
                                    }),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: sh * 0.01,
                          ),
                          controller.type == "curse"
                              ? CurseWidget()
                              : controller.type == "profile"
                                  ? ListProfileWidget()
                                  : CurseWidget(),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          )),
>>>>>>> 1a6e554f155a1d58df31788ea38384be1605e467
    );
  }
}
