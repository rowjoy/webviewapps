// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Apppage extends StatefulWidget {
  const Apppage({
    Key? key,
  }) : super(key: key);

  @override
  State<Apppage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Apppage> {
  bool isloding = false;
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: WebView(
            initialUrl: "https://sendmoney.remitz.co.uk/#/",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
