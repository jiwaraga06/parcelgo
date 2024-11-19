part of '../index.dart';

class InputPickUpScreen extends StatefulWidget {
  const InputPickUpScreen({super.key});

  @override
  State<InputPickUpScreen> createState() => _InputPickUpScreenState();
}

class _InputPickUpScreenState extends State<InputPickUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Input Pickup List", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukan Nama",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Masukan Alamat",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukan Resi",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Masukan No HP",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style:
                            ElevatedButton.styleFrom(backgroundColor: Colors.red[600], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                        child: Text("BATAL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[600], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                        child: Text("SIMPAN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
