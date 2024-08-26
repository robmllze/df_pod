//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Dart/Flutter (DF) Packages by DevCetra.com & contributors. The use of this
// source code is governed by an MIT-style license described in the LICENSE
// file located in this project's root directory.
//
// See: https://opensource.org/license/mit
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:flutter/foundation.dart' show ValueListenable;

import '/src/_index.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// An alias for [PodListenable].
typedef P<T> = PodListenable<T>;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// An extension of [ValueListenable], providing a foundational layer for Pods.
///
/// The [PodListenable] class serves as a simplified interface to Pods,
/// designed specifically for passing to [PodBuilder] or other supported
/// builders.
///
/// It restricts access to modification methods, focusing solely on the
/// listenable aspect without exposing setters or updaters.
///
/// This abstraction is useful for scenarios where you want to expose only
/// necessary functionalities, ensuring that developers interact with the Pod's
/// state in a controlled manner, preventing accidental changes.
///
/// [PodListenable] is intended for use in UI components where you need to
/// respond to state changes without altering the state directly. In contrast,
/// regular Pods provide methods like `set` or `update` for state modifications.
///
/// ### Example:
///
/// ```dart
/// PodListenable<int> pNumber = Pod<int>(55);
/// ```
///
/// In this example, `pNumber` is limited to the interface provided by
/// [PodListenable], ensuring that it can only be used for listening to changes,
/// while retaining the ability to cast back to any Pod if advanced operations
/// are needed, e.g.:
///
/// ```dart
/// (pNumber as Pod).set(2);
/// ```
abstract class PodListenable<T> extends ValueListenable<T> {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension CastPodListenableX<T> on PodListenable<T> {
  /// Returns the Pod as a [PodListenable].
  PodListenable<T> asPodListenable() {
    return this;
  }

  /// Casts the [PodListenable] to a [PodDisposable]. Throws a [TypeError] if the
  /// cast cannot be performed.
  PodDisposable<T> asPodDisposable() {
    return this as PodDisposable<T>;
  }

  /// Casts the [PodListenable] to a [RootPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  RootPod<T> asRootPod() {
    return this as RootPod<T>;
  }

  /// Casts the [PodListenable] to a [ChildPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  ChildPod<TParent, T> asChildPod<TParent>() {
    return this as ChildPod<TParent, T>;
  }

  /// Casts the [PodListenable] to a [SharedPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  SharedPod<T, TRawValue> asSharedPod<TRawValue>() {
    return this as SharedPod<T, TRawValue>;
  }

  /// Casts the [PodListenable] to a [GenericPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  GenericPod<T> asGenericPod() {
    return this as GenericPod<T>;
  }

  /// Casts the [PodListenable] to a [ProtectedPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  ProtectedPod<T> asProtectedPod() {
    return this as ProtectedPod<T>;
  }

  /// Casts the [PodListenable] to a [TempPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  TempPod<T> asTempPod() {
    return this as TempPod<T>;
  }

  /// Casts the [PodListenable] to a [GlobalPod]. Throws a [TypeError] if the
  /// cast cannot be performed.
  GlobalPod<T> asGlobalPod() {
    return this as GlobalPod<T>;
  }
}
