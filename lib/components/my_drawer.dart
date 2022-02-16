import 'package:flutter/material.dart';
import 'package:myfirstapp/controllers/all.controllers.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationController navigation =
        Provider.of<NavigationController>(context);
    final isCollapsed = navigation.isCollapsed;

    final username = 'dotDone';
    final email = 'liam.simpson.91@gmail.com';
    final urlImage =
        'https://avatars.githubusercontent.com/u/59634434?s=400&u=04df13b890673ccb6ea63b36b33160afc8d385bc&v=4';

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        elevation: 2,
        child: Material(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: buildMenuHeader(
                  isCollapsed: isCollapsed,
                  urlImage: urlImage,
                  username: username,
                  email: email,
                  navigationController: navigation,
                ),
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
                      isCollapsed: isCollapsed,
                      text: 'Welcome',
                      icon: Icons.people,
                      page: '/welcome',
                      navigationItem: NavigationItem.welcome,
                      navigationController: navigation,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      isCollapsed: isCollapsed,
                      text: 'Homepage',
                      icon: Icons.people,
                      page: '/homepage',
                      navigationItem: NavigationItem.homepage,
                      navigationController: navigation,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      isCollapsed: isCollapsed,
                      text: 'View 2',
                      icon: Icons.people,
                      page: '/view2',
                      navigationItem: NavigationItem.view2,
                      navigationController: navigation,
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
                      isCollapsed: isCollapsed,
                      text: 'Sign In',
                      icon: Icons.people,
                      page: '/signin',
                      navigationItem: NavigationItem.signin,
                      navigationController: navigation,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildMenuItem(
                      context,
                      isCollapsed: isCollapsed,
                      text: 'Sign Up',
                      icon: Icons.people,
                      page: '/signup',
                      navigationItem: NavigationItem.signup,
                      navigationController: navigation,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              buildCollapseIcon(
                context,
                isCollapsed: isCollapsed,
                navigationController: navigation,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required bool isCollapsed,
    required String text,
    required IconData icon,
    required String page,
    required NavigationItem navigationItem,
    required NavigationController navigationController,
  }) {
    final isSelected = navigationItem == navigationController.navigationItem;

    return isCollapsed
        ? Material(
            color: Colors.transparent,
            child: ListTile(
              selected: isSelected,
              selectedTileColor: Colors.red,
              title: Icon(icon),
              onTap: () =>
                  navigationController.changeScreen(page, navigationItem),
            ),
          )
        : Material(
            color: Colors.transparent,
            child: ListTile(
              selected: isSelected,
              selectedTileColor: Colors.red,
              leading: Icon(icon),
              title: Text(text),
              onTap: () =>
                  navigationController.changeScreen(page, navigationItem),
            ),
          );
  }

  Widget buildMenuHeader({
    required bool isCollapsed,
    required String urlImage,
    required String username,
    required String email,
    required NavigationController navigationController,
  }) =>
      isCollapsed
          ? Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(urlImage),
                ),
              ),
            )
          : InkWell(
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

  Widget buildCollapseIcon(
    BuildContext context, {
    required bool isCollapsed,
    required NavigationController navigationController,
  }) {
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final mainAxisAlignment =
        isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.end;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          onPressed: () => navigationController.toggleIsCollapsed(),
          icon: Icon(icon),
        ),
      ],
    );
  }
}
