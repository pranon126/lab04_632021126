import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Form
  final GlobalKey<FormState>_formkey = GlobalKey();
  //TextField
 final TextEditingController  _text1 = TextEditingController();
 final TextEditingController  _text2 = TextEditingController();
 final TextEditingController  _text3 = TextEditingController();
 int isRadio = 0;
 bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pranon Taneerat"),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const Text("TextFormFied #1"),
              TextFormField(
                controller: _text1,
                onChanged: (value) {
                  setState(() {
                    
                  });
                },
              ),
              const Text("TextFormFied #2 Keyborard and Password"),
              TextFormField(
                
                controller: _text2,
                keyboardType: TextInputType.url,
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    
                  });
                },
              ),
              const Text("TextFormFied #3"),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: 'This is LabelText',
                ),
                controller: _text3,
                onChanged: (value) {
                  setState(() {
                    
                  });
                },
              ),
             

              


              
              Text("TextFormField #1 showInput ${_text1.text}"),
              Text("TextFormField #2 showInput ${_text2.text}"),
              Text("TextFormField #3 showInput ${_text3.text}"),
              
              const Text("\nRadioListTile #1 Simple"),
              RadioListTile(
              title: Text("Item title 1"),
              controlAffinity: ListTileControlAffinity.platform,
                value: 1, 
                groupValue: isRadio, 
                onChanged: ((value) {
                setState(() {
                 isRadio =value!; 
                });
              })),
              RadioListTile(
              title: Text("Item title 2"),
                value: 2, 
                groupValue: isRadio, 
                onChanged: ((value) {
                setState(() {
                 isRadio =value!; 
                });
              })),
              RadioListTile(
              title: Text("Item title 3"),
                value: 3, 
                groupValue: isRadio, 
                onChanged: ((value) {
                setState(() {
                 isRadio =value!; 
                });
              })),Text("CheckboxListTile #1 Simple"),
              CheckboxListTile(    
                title: Text("checkbox"),
                value:isCheck, 
                onChanged: ((value) {
                setState(() {
                  isCheck = value!;
                });
              }))
            ],
          ),
        ),
      ),
    );
  }
}