// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getRoomsHash() => r'18d6eebb6f1383f70232297550320394905a6441';

/// See also [getRooms].
@ProviderFor(getRooms)
final getRoomsProvider = AutoDisposeStreamProvider<List<types.Room>>.internal(
  getRooms,
  name: r'getRoomsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getRoomsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetRoomsRef = AutoDisposeStreamProviderRef<List<types.Room>>;
String _$streamMessagesHash() => r'884e73c65f2de5d68550617316363aa8983b1afc';

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

/// See also [streamMessages].
@ProviderFor(streamMessages)
const streamMessagesProvider = StreamMessagesFamily();

/// See also [streamMessages].
class StreamMessagesFamily extends Family<AsyncValue<List<types.Message>>> {
  /// See also [streamMessages].
  const StreamMessagesFamily();

  /// See also [streamMessages].
  StreamMessagesProvider call({required Room room}) {
    return StreamMessagesProvider(room: room);
  }

  @override
  StreamMessagesProvider getProviderOverride(
    covariant StreamMessagesProvider provider,
  ) {
    return call(room: provider.room);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'streamMessagesProvider';
}

/// See also [streamMessages].
class StreamMessagesProvider
    extends AutoDisposeStreamProvider<List<types.Message>> {
  /// See also [streamMessages].
  StreamMessagesProvider({required Room room})
    : this._internal(
        (ref) => streamMessages(ref as StreamMessagesRef, room: room),
        from: streamMessagesProvider,
        name: r'streamMessagesProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$streamMessagesHash,
        dependencies: StreamMessagesFamily._dependencies,
        allTransitiveDependencies:
            StreamMessagesFamily._allTransitiveDependencies,
        room: room,
      );

  StreamMessagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.room,
  }) : super.internal();

  final Room room;

  @override
  Override overrideWith(
    Stream<List<types.Message>> Function(StreamMessagesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StreamMessagesProvider._internal(
        (ref) => create(ref as StreamMessagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        room: room,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<types.Message>> createElement() {
    return _StreamMessagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StreamMessagesProvider && other.room == room;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, room.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StreamMessagesRef on AutoDisposeStreamProviderRef<List<types.Message>> {
  /// The parameter `room` of this provider.
  Room get room;
}

class _StreamMessagesProviderElement
    extends AutoDisposeStreamProviderElement<List<types.Message>>
    with StreamMessagesRef {
  _StreamMessagesProviderElement(super.provider);

  @override
  Room get room => (origin as StreamMessagesProvider).room;
}

String _$chatViewModelHash() => r'2468d16617fbb1126fd2c9792c4c560e0e0fc7ba';

/// See also [ChatViewModel].
@ProviderFor(ChatViewModel)
final chatViewModelProvider =
    AutoDisposeAsyncNotifierProvider<ChatViewModel, void>.internal(
      ChatViewModel.new,
      name: r'chatViewModelProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$chatViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ChatViewModel = AutoDisposeAsyncNotifier<void>;
String _$roomViewModelHash() => r'd8f5e29b71d341f6bcdc1c95cf9a2695850c1087';

/// See also [RoomViewModel].
@ProviderFor(RoomViewModel)
final roomViewModelProvider =
    AutoDisposeAsyncNotifierProvider<RoomViewModel, types.Room?>.internal(
      RoomViewModel.new,
      name: r'roomViewModelProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$roomViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$RoomViewModel = AutoDisposeAsyncNotifier<types.Room?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
