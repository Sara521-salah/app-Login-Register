import 'package:amit_project/shared/component/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categoryScreen.dart';

class ItemDetailsScreen extends StatelessWidget {
   const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return  Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(
               height: 50,
               child: Text(
                 "Product Name Product Name Product Name Product Name",
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
               ),
             ),
             SizedBox(
               height: 50,
               child: Text(
                 "Product Description Product Description Product Description Product Description",
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(fontSize: 14, color: Colors.grey[700]),
               ),
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SizedBox(
                   width: 35,
                   height: 35,
                   child: MaterialButton(
                     onPressed: () {},
                     child: const Text(
                       "+",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                       ),
                       textAlign: TextAlign.center,
                     ),
                     color: defaultColor,
                   ),
                 ),
                 const Spacer(),
                 const Text(
                   "200 EGP",
                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(fontSize: 14, color: defaultColor),
                 ),
               ],
             ),
           ],
         ),
       );
         //Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Row(
    //         children: [
    //           Container(
    //             width: 200.0,
    //             height: 200.0,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10.0,),
    //               image: const DecorationImage(
    //                 image:NetworkImage("https://image.shutterstock.com/image-photo/supermarket-aisle-empty-red-shopping-260nw-1688252332.jpg"),
    //                 fit: BoxFit.cover,
    //               )
    //             ),
    //           ),
    //           SizedBox(
    //             width: 20.0,
    //           ),
    //           Expanded(
    //             child: Container(
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: const [
    //                   Text(
    //                     'Smart Display-55-inch',
    //                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
    //                   ),
    //                Expanded(child:
    //                   Text(
    //                     'Context LE-55SZ101-55-inch YHD 4K D-LED',
    //                     style: TextStyle(color: Colors.grey),
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    // ),
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     );
  }

  }
