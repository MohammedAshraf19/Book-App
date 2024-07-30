import 'package:flutter/material.dart';

void customSnackBarSuccess({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
          content: Text(
              message
          ),
         backgroundColor: Colors.green,
      )
  );
}
void customSnackBarError ({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            message
        ),
        backgroundColor: Colors.red,
      ),
  );
}