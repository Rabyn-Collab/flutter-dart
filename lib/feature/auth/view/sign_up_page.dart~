import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/core/common_widgets/button_widget.dart';
import 'package:mvvm/core/common_widgets/common_dialog.dart';
import 'package:mvvm/feature/auth/view_model/sign_up_provider.dart';


class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    ref.listen(signUpProvider, (prev, next){
      next.maybeWhen(
          data: (data) => CommonDialog.showCommonDialog(context, 'Register Successfully'),
          error: (error, stackTrace) => CommonDialog.showCommonDialog(context, error.toString()),
          orElse: ()=> null
      );
    });


    final state = ref.watch(signUpProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FormBuilder(
          key: _formKey,
          child: ListView(
            children: [

              FormBuilderTextField(
                name: 'username',
                textInputAction: TextInputAction.next ,
                decoration: InputDecoration(
                    hintText: 'Username'
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              gapH20,
              FormBuilderTextField(
                name: 'email',
                textInputAction: TextInputAction.next ,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required(),
                ]),
              ),
              gapH20,
              FormBuilderTextField(
                name: 'password',
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              gapH30,

              ButtonWidget(
                  isLoad: state.isLoading,
                  onTap: (){
                FocusScope.of(context).unfocus();
                if(_formKey.currentState!.saveAndValidate(focusOnInvalid: false)){
                  final map = _formKey.currentState!.value;
                  ref.read(signUpProvider.notifier).userRegister(email: map['email'], password: map['password'], username: map['username']);
                }else{

                }
              })

            ],
          ),
        ),
      ),
    );
  }
}
