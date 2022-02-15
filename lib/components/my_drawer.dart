import 'package:flutter/material.dart';
import 'package:myfirstapp/controllers/all.controllers.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCollapsed = false;

    final username = 'dotDone';
    final email = 'liam.simpson.91@gmail.com';
    final urlImage =
        'https://avatars.githubusercontent.com/u/59634434?s=400&u=04df13b890673ccb6ea63b36b33160afc8d385bc&v=4';

    void toggleCollapsed() {
      isCollapsed = !isCollapsed;
    }

    return Drawer(
      elevation: 2,
      child: Container(
        width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
        child: Material(
          child: ListView(
            children: <Widget>[
              buildMenuHeader(
                urlImage: urlImage,
                username: username,
                email: email,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      text: 'Welcome',
                      icon: Icons.people,
                      page: '/welcome',
                      navigationItem: NavigationItem.welcome,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      text: 'Homepage',
                      icon: Icons.people,
                      page: '/homepage',
                      navigationItem: NavigationItem.homepage,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      text: 'View 2',
                      icon: Icons.people,
                      page: '/view2',
                      navigationItem: NavigationItem.view2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      text: 'Sign In',
                      icon: Icons.people,
                      page: '/signin',
                      navigationItem: NavigationItem.signin,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      text: 'Sign Up',
                      icon: Icons.people,
                      page: '/signup',
                      navigationItem: NavigationItem.signup,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required String text,
    required IconData icon,
    required String page,
    required NavigationItem navigationItem,
  }) {
    NavigationController navigation =
        Provider.of<NavigationController>(context, listen: false);
    final isSelected = navigationItem == navigation.navigationItem;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.red,
        leading: Icon(icon),
        title: Text(text),
        onTap: () => navigation.changeScreen(page, navigationItem),
      ),
    );
  }

  Widget buildMenuHeader({
    required String urlImage,
    required String username,
    required String email,
    // required VoidCallback? onClicked,
  }) =>
      InkWell(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(urlImage),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username),
                    Text(email),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
