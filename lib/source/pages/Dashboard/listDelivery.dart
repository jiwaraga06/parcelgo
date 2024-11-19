part of '../index.dart';

class ListDeliveryScreen extends StatefulWidget {
  const ListDeliveryScreen({super.key});

  @override
  State<ListDeliveryScreen> createState() => _ListDeliveryScreenState();
}

class _ListDeliveryScreenState extends State<ListDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("List Delivery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: ListView.builder(
        itemCount: dataDelivery.length,
        itemBuilder: (BuildContext context, int index) {
          var a = dataDelivery[index];
          return Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 1.3, spreadRadius: 1.3, offset: Offset(1, 3))]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(a['no_resi'], style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                Table(
                  border: TableBorder.all(style: BorderStyle.none),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(100),
                    1: FixedColumnWidth(15),
                  },
                  children: [
                    TableRow(
                      children: [
                        const Text('Nama', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        const Text(':', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        Text(a['nama'], style: const TextStyle(fontFamily: 'JakartaSansMedium')),
                      ],
                    ),
                    const TableRow(
                      children: [SizedBox(height: 4), SizedBox(height: 4), SizedBox(height: 4)],
                    ),
                    TableRow(
                      children: [
                        const Text('No. HP', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        const Text(':', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        Text(a['no_hp'], style: const TextStyle(fontFamily: 'JakartaSansMedium')),
                      ],
                    ),
                    const TableRow(
                      children: [SizedBox(height: 4), SizedBox(height: 4), SizedBox(height: 4)],
                    ),
                    TableRow(
                      children: [
                        const Text('Alamat', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        const Text(':', style: TextStyle(fontFamily: 'JakartaSansSemiBold')),
                        Text(a['alamat'], style: const TextStyle(fontFamily: 'JakartaSansMedium')),
                      ],
                    ),
                    const TableRow(
                      children: [SizedBox(height: 4), SizedBox(height: 4), SizedBox(height: 4)],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
