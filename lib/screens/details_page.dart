import 'package:flutter/material.dart';
import 'package:travel_app/utils/image_builder.dart';
import 'package:travel_app/widgets/booking_dialoge.dart';
import 'package:travel_app/widgets/rating_stars.dart';

class DetailsPage extends StatefulWidget {
  final String imageUrl;

  DetailsPage({this.imageUrl});
  
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double sliderValue = 20;
  BookingDialogue bookingDialogue = BookingDialogue();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(height: MediaQuery.of(context).size.height * 0.75,child: ImageBuilder(imageUrl: widget.imageUrl, shimmerContainerHeight: MediaQuery.of(context).size.height * 0.7)),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.42,
                left: 30.0,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RatingStars(rating: 4.0),
                          SizedBox(width: 5.0),
                          Text('4,6', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                          SizedBox(width: 5.0),
                          Text('(313)', style: TextStyle(color: Colors.grey.shade400, fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.0),)
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Lighthouse \nexcursion', style: Theme.of(context).textTheme.headline5, maxLines: 2)
                    ]
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0)
                )
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35.0),
                children: [
                  Text('Newhaven Lighthouse \nin Edingurgh, United Kingdom', style: Theme.of(context).textTheme.headline6, maxLines: 2),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan> [
                            TextSpan(text: 'Available: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            TextSpan(text: '10:00 - 18:00', style: Theme.of(context).textTheme.overline),
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
                      Text('Mon - Sat', style: Theme.of(context).textTheme.overline)
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan> [
                            TextSpan(text: 'Duration: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            TextSpan(text: '4 hours ', style: Theme.of(context).textTheme.overline),
                          ]
                        )
                      ),
                      SizedBox(width: 25),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan> [
                            TextSpan(text: 'Price: ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            TextSpan(text: '\$20 ', style: Theme.of(context).textTheme.overline),
                          ]
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Slider(
                      value: sliderValue,
                      onChanged: (newValue) {
                        setState(() {
                          sliderValue = newValue;
                        });
                      }, 
                      activeColor: Colors.blue.shade300,
                      label: '$sliderValue',
                      divisions: 4,
                      min: 0,
                      max: 100
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('3 persons', style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total: \$60', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600)),
                      GestureDetector(
                        onTap: () => {
                          
                          bookingDialogue.showBookingDialogue(context)
                        } ,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.5),
                            color: Theme.of(context).primaryColor
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Text('Book Now', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                            ))
                        ),
                      )
                    ]
                  )
                ]
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.0,),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.share, color: Colors.white, size: 30.0,),
                )
              ]
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height * 0.6) - 30.0,
            left: MediaQuery.of(context).size.width * 0.75,
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ],
              ),
              child: Icon(
                Icons.bookmark,
                size: 32.0,
                color: Theme.of(context).primaryColor
              ),
            ),
          )
        ]
      ),
    );
  }
}