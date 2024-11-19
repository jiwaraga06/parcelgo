part of '../index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Parcel Go',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukan Username",
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kolom username tidak boleh kosong";
                  }
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kolom username tidak boleh kosong";
                  }
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, dashboardScreen);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  child: Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
