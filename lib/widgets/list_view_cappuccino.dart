import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CapppuListView extends StatefulWidget {
  const CapppuListView(
      {Key? key,
      required this.imageScale,
      required this.title,
      required this.image,
      required this.price,
      required this.subtitle})
      : super(key: key);

  final String image, title, subtitle, price;
  final double imageScale;

  @override
  State<CapppuListView> createState() => _CapppuListViewState();
}

class _CapppuListViewState extends State<CapppuListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0,bottom: 10,top: 10),
            child: Container(
              width: 150,
              // padding: EdgeInsets.only(left: 10)
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.grey[800]!, Colors.black],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,height: 150,width: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset(widget.image,
                          scale: widget.imageScale, fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    Text(widget.title,style: GoogleFonts.roboto(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                    Text(widget.subtitle,style: GoogleFonts.roboto(color: Colors.white70,fontSize: 12),),
                    const SizedBox(height: 10),
                    Row(children: [
                      Text('\$ ',style: GoogleFonts.roboto(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                      Text(widget.price,style: GoogleFonts.roboto(color: Colors.white70,fontWeight: FontWeight.bold),)
                    ],)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
