import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/core/common_widgets/button_widget.dart';
import 'package:mvvm/core/common_widgets/common_dialog.dart';
import 'package:mvvm/feature/auth/view_model/login_provider.dart';
import 'package:mvvm/routes/route_enum.dart';


class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    ref.listen(loginProvider, (prev, next){
      next.maybeWhen(
        data: (data) => CommonDialog.showCommonDialog(context, 'Login Successfully'),
          error: (error, stackTrace) => CommonDialog.showCommonDialog(context, error.toString()),
          orElse: ()=> null
      );
    });

    final loginState = ref.watch(loginProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FormBuilder(
          key: _formKey,
          child: ListView(
            children: [
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
                 isLoad: loginState.isLoading,
                 onTap: (){
               FocusScope.of(context).unfocus();
               if(_formKey.currentState!.saveAndValidate(focusOnInvalid: false)){
                 final map = _formKey.currentState!.value;
                  ref.read(loginProvider.notifier).loginUser(email: map['email'], password: map['password']);
               }else{

               }
             }),
              gapH30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(onPressed: (){
                    context.pushNamed(AppRoute.register.name);
                  }, child: Text('Sign Up'))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
