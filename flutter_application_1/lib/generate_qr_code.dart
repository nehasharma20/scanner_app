import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR code'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlcontroller.text.isNotEmpty)
                QrImageView(data:urlcontroller.text,size:200),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: urlcontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter your data'
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){

              }, child: Text('Generate QR Code'))

            ],
          ),
        ),
      ),
    );
  }
}