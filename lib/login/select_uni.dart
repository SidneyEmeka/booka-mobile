import 'package:booka/reusables/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../stylings.dart';

class SelectUni extends StatefulWidget {
  const SelectUni({super.key});

  @override
  State<SelectUni> createState() => _SelectUniState();
}

class _SelectUniState extends State<SelectUni> {
  @override
  Widget build(BuildContext context) {
    List<String> universities = ['Uni 1', 'Uni 2'];
    String? selectedOption;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Align(alignment: Alignment(-1, 0),
                  child: Icon(Icons.arrow_back_ios_new)),
              Spacer(),
              Text('Select University', style: Stylings.bodyMediumLargest,),
              Spacer(),
              SizedBox(
                height: Get.height * 0.06,
                width: Get.width * 0.65,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 3,
                        color: Stylings.priGray,
                        
                      )
                    )
                  ),
                  hint: Text('Select University', style: Stylings.bodyMediumLargest,),
                    value: selectedOption,
                    items: universities.map((String university) {
                      return DropdownMenuItem<String>(
                          value: university, child: Text(university),);}).toList(),
                     onChanged: (String? newValue) {
                      setState ((){
                        selectedOption = newValue;
                    });
                     },),
              ),
              Spacer(flex: 13),
              Mybutton(bText: 'Continue', bColor: Stylings.priYellow),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
