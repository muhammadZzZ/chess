import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:echessapp/Utils/constrant.dart';

class PDFview extends StatelessWidget {
   PDFview({super.key,required this.pdfdatabits,required this.headername});
    
     Uint8List? pdfdatabits;
     String headername;
    
  @override
  Widget build(BuildContext context) {
    
    return   Scaffold(
      appBar: AppBar(backgroundColor: PrimaryColor,
      elevation: 0,
      centerTitle: true,
        title: Text(iskurdish == false ? headername.substring(0,6) : headername.substring(0,10),style:const TextStyle(color: Colors.white),),
        leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child:const Icon(Icons.arrow_back_rounded)),),
        body: SfPdfViewer.memory(pdfdatabits!,scrollDirection: PdfScrollDirection.horizontal,pageLayoutMode: PdfPageLayoutMode.single,),

      
    );
  }
}

