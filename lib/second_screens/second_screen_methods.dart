import 'package:flutter/material.dart';

titleText(text) {
  return Text(text,
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
}

supTitleText(text) {
  return Text(text, style: TextStyle(fontSize: 15, color: Colors.grey));
}

buttons(Data, color, width, hight) {
  return ElevatedButton(
    onPressed: () {},
    child: Data,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fixedSize: Size(width, hight),
    ),
  );
}

myForm(word) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: SizedBox(
      width: 320,

      child: TextFormField(

        decoration: InputDecoration(

          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          label: Text(word),
        ),
      ),
    ),
  );
}
