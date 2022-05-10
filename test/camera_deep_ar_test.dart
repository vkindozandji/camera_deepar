import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('camera_deep_ar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', (){
    CameraDeepAr cam = CameraDeepAr(androidLicenceKey: '', cameraDeepArCallback: (CameraDeepArController controller) {  }, iosLicenceKey: '', onCameraReady: (bool isCameraReady) {  }, onImageCaptured: (String path) {  }, onVideoRecorded: (String path) {  },);
  });
}
