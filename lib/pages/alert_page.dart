import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  ShowMyAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Icon(
                Icons.send, // Cambia este ícono por el que necesites
                size: 50,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Text("Invite people to this project"),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("invite existing team members or add new ones."),
              SizedBox(height: 10),
              // Lista de miembros del equipo
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/30145492/pexels-photo-30145492.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                title: Text("Whitney Blessing"),
                subtitle: Text("whitneyblessing@gmail.com"),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add"),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/28907975/pexels-photo-28907975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                title: Text("Cheryl Green"),
                subtitle: Text("cherylgreen@gmail.com"),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text("Remove"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3776156/pexels-photo-3776156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                title: Text("Bonnie Lopez"),
                subtitle: Text("bonnielopez@gmail.com"),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add"),
                ),
              ),
              Divider(),
              // Campo para añadir nuevo email
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.amberAccent,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text("cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("aceptar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ShowMyAlert1(context);
              },
              child: Text("alert 1"),
            ),
          ],
        ),
      ),
    );
  }
}
