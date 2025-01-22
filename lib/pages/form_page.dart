import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


class FormPage extends StatefulWidget { 
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  AutovalidateMode _mode = AutovalidateMode.disabled;
  List data  = [];
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FormBuilder(
          autovalidateMode: _mode,
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: 50,),
               FormBuilderTextField(
                 inputFormatters: [
                  // LengthLimitingTextInputFormatter(10)
                 ],
                   name: 'title',
                 decoration: InputDecoration(
                   hintText: 'Title'
                 ),
                 validator: FormBuilderValidators.compose([
                   FormBuilderValidators.required(),
                   FormBuilderValidators.minLength(5),
                   FormBuilderValidators.maxLength(90),
                 ]),
               ),
                const SizedBox(height: 20,),


               FormBuilderTextField(
                   name: 'detail',
                 decoration: InputDecoration(
                   hintText: 'Detail'
                 ),
                 validator: FormBuilderValidators.compose([
                   FormBuilderValidators.required(),
                 ]),
               ),


                
                const SizedBox(height: 20,),


                FormBuilderTextField(
                  name: 'count',
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Count'
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                const SizedBox(height: 20,),


                ElevatedButton(
                    onPressed: (){
                      FocusScope.of(context).unfocus();
                      if(_formKey.currentState!.saveAndValidate(focusOnInvalid: false)){
                        final map = _formKey.currentState?.value;
                        setState(() {
                          data.add(map);
                        });
                        _formKey.currentState!.reset();

                      }else{
                        setState(() {
                          _mode = AutovalidateMode.onUserInteraction;
                        });
                      }

                    }, child: Text('Submit'))
              ],
            )
        ),
      ),
    );
  }
}
