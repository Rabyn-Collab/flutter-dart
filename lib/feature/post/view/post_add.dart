import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/core/common_widgets/button_widget.dart';
import 'package:mvvm/core/common_widgets/common_dialog.dart';
import 'package:mvvm/feature/post/view_model/post_view_model.dart';
import 'package:mvvm/routes/route_enum.dart';


class PostAdd extends ConsumerStatefulWidget {
  const PostAdd({super.key});

  @override
  ConsumerState createState() => _PostAddState();
}

class _PostAddState extends ConsumerState<PostAdd> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    ref.listen(postMutationProvider, (prev, next){
      next.maybeWhen(
          data: (data) {
            CommonDialog.showCommonDialog(context, 'Post Added Successfully');
            context.pop();
          },
          error: (error, stackTrace) => CommonDialog.showCommonDialog(context, error.toString()),
          orElse: ()=> null
      );
    });

    final postState = ref.watch(postMutationProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FormBuilder(
          key: _formKey,
          child: ListView(
            children: [
              FormBuilderTextField(
                name: 'title',
                textInputAction: TextInputAction.next ,
                decoration: InputDecoration(
                    hintText: 'Title'
                ),
                validator: FormBuilderValidators.compose([

                  FormBuilderValidators.required(),
                ]),
              ),
              gapH20,
              FormBuilderTextField(
                name: 'description',
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: 'Description'
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),

              gapH20,
              FormBuilderTextField(
                name: 'imageUrl',
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: 'ImageUrl'
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              gapH30,
              ButtonWidget(
                  isLoad: postState.isLoading,
                  onTap: (){
                    FocusScope.of(context).unfocus();
                    if(_formKey.currentState!.saveAndValidate(focusOnInvalid: false)){
                      final map = _formKey.currentState!.value;
                      ref.read(postMutationProvider.notifier).createPost(title: map['title'], description: map['description'], imageUrl: map['imageUrl']);

                    }else{

                    }
                  }),


            ],
          ),
        ),
      ),
    );
  }
}
