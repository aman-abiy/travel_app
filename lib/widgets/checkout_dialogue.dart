import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../barrel.dart';

class CheckoutDialogue {  
  String imageUrl = 'https://i.pinimg.com/originals/4b/af/9d/4baf9d114c709288cbae5f6cd6a18bd8.jpg';

  checkoutDialogue(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.black.withOpacity(0.1),
      builder: (context) {
        return Container(
          // height: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.075),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 10.0),
                                  Text('Excursion', style: TextStyle(color: Colors.grey, fontSize: 15)),
                                  SizedBox(height: 5.0),
                                  Text('Lighthouse', style: GoogleFonts.montserrat(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 0.5)),
                                  SizedBox(height: 12.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan> [
                                              TextSpan(text: 'Time: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                              TextSpan(text: '24 Nov, 10:00 AM', style: Theme.of(context).textTheme.overline),
                                            ]
                                          )
                                        ),
                                        SizedBox(width: 15),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade400,
                                            borderRadius: BorderRadius.circular(3)
                                          )
                                        ),
                                        SizedBox(width: 10),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan> [
                                              TextSpan(text: 'Person: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                              TextSpan(text: '3', style: Theme.of(context).textTheme.overline),
                                            ]
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan> [
                                              TextSpan(text: 'Duration: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                              TextSpan(text: '4 hours', style: Theme.of(context).textTheme.overline),
                                            ]
                                          )
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade400,
                                            borderRadius: BorderRadius.circular(3)
                                          )
                                        ),
                                        SizedBox(width: 10),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan> [
                                              TextSpan(text: 'Price: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                              TextSpan(text: '\$60', style: Theme.of(context).textTheme.overline),
                                            ]
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Divider(color: Colors.grey,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Center(child: Text('Open Excursion', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500, fontSize: 16))),
                                ),
                              )
                            ]
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                          ),
                          child: Center(child: Text('Done', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500, fontSize: 16)))
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.15),
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: ImageBuilder(imageUrl: imageUrl, shimmerContainerHeight: MediaQuery.of(context).size.height * 0.25, borderRadius: 25.0,))
                  ),
                )
              ],
            ),
          )
        );
      }
    );
  }


  
}