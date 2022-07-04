import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:developer';

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool _flashOn = false;
  bool _camFront = true;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildQrView(context),
            Align(
              alignment: Alignment.topCenter,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  if (result != null)
                    SelectableText(
                      '${result!.code}',
                      style: const TextStyle(color: Colors.white),
                    )
                  else
                    const Text(
                      'Scan a code',
                      style: TextStyle(color: Colors.white),
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white,
                    onPressed: () async {
                      await controller?.toggleFlash();
                      setState(() {
                        _flashOn = !_flashOn;
                      });
                    },
                    icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () async {
                      await controller?.flipCamera();
                      setState(() {
                        _camFront = !_camFront;
                      });
                    },
                    icon: Icon(
                        _camFront ? Icons.camera_rear : Icons.camera_front),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
