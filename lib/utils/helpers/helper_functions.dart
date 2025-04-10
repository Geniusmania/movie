import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunctions {
  static Color? getColor(String value) {
    if (value == 'green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'Cyan') {
      return Colors.cyan;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'DeepOrange') {
      return Colors.deepOrange;
    } else if (value == 'LightBlue') {
      return Colors.lightBlue;
    } else if (value == 'LightGreen') {
      return Colors.lightGreen;
    } else if (value == 'DeepPurple') {
      return Colors.deepPurple;
    } else if (value == 'BlueGrey') {
      return Colors.blueGrey;
    } else if (value == 'White') {
      return Colors.white;
    }else if (value == 'Green') {
      return Colors.green;
    } else {
      return Colors.white; // Default color
    }
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }


  static String truncateText(String text, int length) {
    if (text.length > length) {
      return '${text.substring(0, length)}...';
    } else {
      return text;
    }
  }


  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight(BuildContext context){
    return MediaQuery.of(Get.context!).size.height;
  }
  
  static double screenWidth(BuildContext context){
    return MediaQuery.of(Get.context!).size.width;
  }



static String getFormattedDate(DateTime date, {String format ='dd mm yyyy'}){
  return DateFormat(format).format(date); 
}

static List <Widget>  wrapWidget( List<Widget> widgets, int rowSize){
  final List<Widget> wrappedWidgets = [];
  for(var i = 0; i < widgets.length; i += rowSize){
    var rowWidgets = widgets.skip(i).take(rowSize).toList();
    wrappedWidgets.add(Row(
      children: rowWidgets,
    ));
  }
return wrappedWidgets;
}
}