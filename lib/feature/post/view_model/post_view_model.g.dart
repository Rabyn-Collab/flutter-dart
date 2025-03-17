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
String _$userPostsStreamHash() => r'7f0eafb018eb3c6ab134fc5bc349f96d5ea1229f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [userPostsStream].
@ProviderFor(userPostsStream)
const userPostsStreamProvider = UserPostsStreamFamily();

/// See also [userPostsStream].
class UserPostsStreamFamily extends Family<AsyncValue<List<Post>>> {
  /// See also [userPostsStream].
  const UserPostsStreamFamily();

  /// See also [userPostsStream].
  UserPostsStreamProvider call({required String userId}) {
    return UserPostsStreamProvider(userId: userId);
  }

  @override
  UserPostsStreamProvider getProviderOverride(
    covariant UserPostsStreamProvider provider,
  ) {
    return call(userId: provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userPostsStreamProvider';
}

/// See also [userPostsStream].
class UserPostsStreamProvider extends AutoDisposeStreamProvider<List<Post>> {
  /// See also [userPostsStream].
  UserPostsStreamProvider({required String userId})
    : this._internal(
        (ref) => userPostsStream(ref as UserPostsStreamRef, userId: userId),
        from: userPostsStreamProvider,
        name: r'userPostsStreamProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$userPostsStreamHash,
        dependencies: UserPostsStreamFamily._dependencies,
        allTransitiveDependencies:
            UserPostsStreamFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserPostsStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    Stream<List<Post>> Function(UserPostsStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserPostsStreamProvider._internal(
        (ref) => create(ref as UserPostsStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Post>> createElement() {
    return _UserPostsStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPostsStreamProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserPostsStreamRef on AutoDisposeStreamProviderRef<List<Post>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserPostsStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<Post>>
    with UserPostsStreamRef {
  _UserPostsStreamProviderElement(super.provider);

  @override
  String get userId => (origin as UserPostsStreamProvider).userId;
}

String _$postMutationHash() => r'7556bae406549e123191b482c9f36a3e4e97543e';

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
