  import 'package:flutter/material.dart';
import 'package:fooddelivery_app/servisics/auth/auth_services.dart';
import 'package:fooddelivery_app/settingpage.dart';
import 'package:fooddelivery_app/widgets/my_drawertile.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({super.key});

  void logout(){
    final authService = AuthServices();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
       backgroundColor: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                //app logo
                Icon(Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Divider(
                    
                  ),
                ),

                 //  home listtile.
                 MyDrawerTile(
                  text: "H O M E",
                   icon: Icons.home, 
                   onTap: () => Navigator.pop(context),
                   ),
            
                //setting listtile.
                 MyDrawerTile(
                  text: "S E T T I N G S",
                   icon: Icons.settings, 
                   onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()));
                   },
                   ),
             
                const Spacer(),

                 //logouy listtile.
                 MyDrawerTile(
                  text: "L O G O U T",
                   icon: Icons.logout, 
                   onTap: () {},
                   ),

                const SizedBox(height: 25,),
            
              ],
             ),
          ),
   );
  }
}