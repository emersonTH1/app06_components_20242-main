import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.amberAccent,
          title: Column(
            children: [
              Icon(Icons.send, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text("Invite people to this project"),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Invite existing team members or add new ones."),
              SizedBox(height: 10),
              _buildTeamMemberTile(
                name: "Whitney Blessing",
                email: "whitneyblessing@gmail.com",
                avatarUrl:
                    "https://images.pexels.com/photos/30145492/pexels-photo-30145492.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                actionLabel: "Add",
                actionColor: Colors.blue,
                onActionPressed: () {},
              ),
              _buildTeamMemberTile(
                name: "Cheryl Green",
                email: "cherylgreen@gmail.com",
                avatarUrl:
                    "https://images.pexels.com/photos/28907975/pexels-photo-28907975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                actionLabel: "Remove",
                actionColor: Colors.red,
                onActionPressed: () {},
              ),
              _buildTeamMemberTile(
                name: "Bonnie Lopez",
                email: "bonnielopez@gmail.com",
                avatarUrl:
                    "https://images.pexels.com/photos/3776156/pexels-photo-3776156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                actionLabel: "Add",
                actionColor: Colors.blue,
                onActionPressed: () {},
              ),
              Divider(),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  ListTile _buildTeamMemberTile({
    required String name,
    required String email,
    required String avatarUrl,
    required String actionLabel,
    required Color actionColor,
    required VoidCallback onActionPressed,
  }) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(avatarUrl)),
      title: Text(name),
      subtitle: Text(email),
      trailing: ElevatedButton(
        onPressed: onActionPressed,
        style: ElevatedButton.styleFrom(backgroundColor: actionColor),
        child: Text(actionLabel),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: Text("Alert 1"),
        ),
      ),
    );
  }
}
