import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final String helperText;
  IconData? icon;

  //final ValueChanged<String> onValue; //
  
  MyTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.helperText,
     this.icon=Icons.close, 
    //required this.onValue    //
    });

  @override
  Widget build(BuildContext context) {
    if (icon==Icons.abc) {
        icon=null;
    }

    final textController = TextEditingController();
    final focusNode = FocusNode();
    
    //final outlineInputBorder = UnderlineInputBorder(
      //borderSide: const BorderSide(color: Colors.transparent),
      //borderRadius: BorderRadius.circular(40)
    //);

    final inputDecoration = InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 4, 16),
      labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.normal),
        labelText: label,
        hintText: hint,
        helperText: helperText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.35), width: 1.5),
        ),
        
        //enabledBorder: outlineInputBorder,
        //focusedBorder: outlineInputBorder,
        filled: false,
        suffixIcon: IconButton(iconSize: 14,
          icon:  Icon(icon),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
            //onValue(textValue); //
          },
        ));
      

    return TextFormField(//maxLength:  20,
      onTapOutside: (event){
        
        focusNode.unfocus();
      },
     focusNode: focusNode,
     controller: textController,
     decoration: inputDecoration ,
     onFieldSubmitted: (value){      
      textController.clear();
      focusNode.requestFocus(); 
      //onValue(value);   //
     },
   
    );
  }
}