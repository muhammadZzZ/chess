
import 'dart:typed_data';

import 'package:echessapp/Utils/constrant.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFview extends StatelessWidget {
   PDFview({super.key,required this.pdfdatabits,required this.headername});
    
     Uint8List? pdfdatabits;
     String headername;
    
  @override
  Widget build(BuildContext context) {
    
    return   Scaffold(
      appBar: AppBar(backgroundColor: PrimaryColor,
        title: Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: Text(headername)) ,),
        leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_rounded)),),
        body: SfPdfViewer.memory(pdfdatabits!,scrollDirection: PdfScrollDirection.horizontal,pageLayoutMode: PdfPageLayoutMode.single,),

      
    );
  }
}

