// lib/_middleware.dart
import 'package:app/authenticator.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<Authenticator>(
      (_) => Authenticator(),
    ),
  );
}
