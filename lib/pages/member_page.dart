import 'package:flutter/material.dart';
import 'package:practice_carousel/widget/nav-drawer.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          title: Text('link_fam.'),
          backgroundColor: Colors.pink.shade50
      ),
      body:
      Container(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
      
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hasFloatingPlaceholder: false,
                      labelText: "Name",
                      helperText: "name",
                      errorText: "",
                    // hintText: "hintText",
                      // prefixIcon: Icon(Icons.perm_identity),
                      // prefixText: "prefix",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.mobile_friendly_sharp),
                      labelText: "Tel",
                      helperText: "mobile",
                      errorText: "",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Email",
                      helperText: "Email",
                      errorText: "",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.home),
                      labelText: "Address",
                      helperText: "Address",
                      errorText: "",
                    ),
                  ),
                ]
          )
        )
    );
  }
}

