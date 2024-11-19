part of '../index.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text("Menu", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, inputPickupScreen);
                },
                tileColor: Colors.blue,
                leading: Icon(Icons.add, color: Colors.white),
                title: Text("Input Pickup List", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, listDeliveryScreen);
                },
                tileColor: Colors.deepOrange,
                leading: Icon(Icons.menu, color: Colors.white),
                title: Text("List Delivery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, statusDeliveryScreen);
                },
                tileColor: Colors.red[600],
                leading: Icon(Icons.refresh, color: Colors.white),
                title: Text("Status Delivery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
