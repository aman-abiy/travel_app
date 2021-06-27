import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_app/widgets/checkout_dialogue.dart';

class BookingDialogue {
  CheckoutDialogue checkoutDialogue = CheckoutDialogue();

  List<String> days = ['Sunday', 'Monday', 'Tuesday', 'Wednsday', 'Thursday', 'Friday', 'Saturday'];
  List<int> dates = [21, 22, 23, 24, 25, 26, 27];

  String selectedDay = '';
  int selectedTimeStart = 10;
  

  showBookingDialogue(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: BottomSheet(
            onClosing: () {}, 
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return ListView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.close), 
                              onPressed: () => Navigator.of(context).pop()
                            ),
                            Text('Booking', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                            FlatButton(
                              onPressed: () {}, 
                              child: Text('Done', style: TextStyle(color: Theme.of(context).primaryColor))
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: buildDateSelector(context, setState),
                      ),
                      Divider(),
                      timeCards(context, 10, 14, false, setState),
                      timeCards(context, 12, 15, true, setState),
                      timeCards(context, 14, 18, true, setState),
                      SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: () => {                          
                          checkoutDialogue.checkoutDialogue(context)
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.3),
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.5),
                            color: Theme.of(context).primaryColor
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                            ))
                        ),
                      )
                    ],
                  );
                }
              );
            }
          ),
        );
      }
    );
  }

  Widget buildDateSelector(BuildContext context, Function setState) {
    List<Widget> buttonSelections = [];
    for(int i = 0; i < days.length; i++) {
      buttonSelections.add(daySelectionButton(context, days[i], dates[i], setState));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: buttonSelections
    );
  }

  Widget daySelectionButton(BuildContext context, String day, int date, Function setState) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDay = day;
        });
      },
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: selectedDay == day ? Theme.of(context).primaryColor : Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
          child: Center(
            child: Column(
              children: [
                Text(day.substring(0, 2), style: TextStyle(color: selectedDay == day ? Colors.white : Colors.grey)),
                SizedBox(height: 2),
                Text('$date', style: TextStyle(color: selectedDay == day ? Colors.white : Colors.black, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget timeCards(BuildContext context, int startHour, int endhour, bool isAvailableMoreThan1, Function setState) {
    String availabilityMsg = isAvailableMoreThan1 ? 'Available' : 'Last spot remaining';
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTimeStart = startHour;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$startHour:00-$endhour:00', style: Theme.of(context).textTheme.overline),
                  SizedBox(height: 10.0),
                  Text(availabilityMsg)
                ]
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: selectedTimeStart == startHour ? Theme.of(context).primaryColor : Colors.white,
                  border: Border.all(color: selectedTimeStart == startHour ? Colors.white: Colors.grey.shade200)
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.rice_bowl, size: 20, color: Colors.white), 
                    onPressed: () {
                      setState(() {
                        selectedTimeStart = startHour;
                      });
                    }
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }

  
}