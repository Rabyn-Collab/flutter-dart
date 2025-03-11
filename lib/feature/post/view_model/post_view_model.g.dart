// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postsStreamHash() => r'cadb34d7d33c136d3182fea78dfc28a91e007211';

/// See also [postsStream].
@ProviderFor(postsStream)
final postsStreamProvider = AutoDisposeStreamProvider<List<Post>>.internal(
  postsStream,
  name: r'postsStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PostsStreamRef = AutoDisposeStreamProviderRef<List<Post>>;
String _$postMutationHash() => r'27a3621696a84b0f1eb4d7a649f6b014375340f4';

/// See also [PostMutation].
@ProviderFor(PostMutation)
final postMutationProvider =
    AutoDisposeAsyncNotifierProvider<PostMutation, void>.internal(
      PostMutation.new,
      name: r'postMutationProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$postMutationHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$PostMutation = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
