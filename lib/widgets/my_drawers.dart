import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget
{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
{
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      backgroundColor: Colors.black54,
      child:ListView(
        children: [
          //header
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 26, 0, 12),
            child: Column(
              //header 
              children: [
                Container(
                  height:130,
                  width: 130,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://imgs.search.brave.com/HTr5GHDb3tOocRlsg5LdZ6MnJfFWHShQqAdlv2yrxp0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9yZW5k/ZXIuZmluZWFydGFt/ZXJpY2EuY29tL2lt/YWdlcy9yZW5kZXJl/ZC9zZWFyY2gvcHJp/bnQvNi84L2JyZWFr/L2ltYWdlcy1tZWRp/dW0tNS9hd2Vzb21l/LXNvbGl0dWRlLWJl/c3MtaGFtaXRpLmpw/Zw",
                    ),
                  ),
                ),
                const SizedBox(height:12,),
                  //user name
                Text(
                  "user name",
                  style:TextStyle(
                    color:Colors.grey,
                    fontSize:20,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                //user profile
                //circleavtar
              ],
            ),
          ),

          //body
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),

            child:Column(
              children:[
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),

                //home
                ListTile(
                  leading: const Icon(Icons.home,color:Colors.grey,),
                  title:const Text(
                    "Home",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),

                //my orders

                ListTile(
                  leading: const Icon(Icons.reorder,color:Colors.grey,),
                  title:const Text(
                    "My Orders",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),

                // not yet received
                ListTile(
                  leading: const Icon(Icons.picture_in_picture_alt_rounded,color:Colors.grey,),
                  title:const Text(
                    "Not Yet Received",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),


                //history
                ListTile(
                  leading: const Icon(Icons.access_time,color:Colors.grey,),
                  title:const Text(
                    "History",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),


                //search
                ListTile(
                  leading: const Icon(Icons.search,color:Colors.grey,),
                  title:const Text(
                    "Search",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),


                //logout
                ListTile(
                  leading: const Icon(Icons.exit_to_app,color:Colors.grey,),
                  title:const Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: ()
                  {

                  },

                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness:3,
                ),
              ],

            )
          ),



        ],
      )
    );
  }
}
