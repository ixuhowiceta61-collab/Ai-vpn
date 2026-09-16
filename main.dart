import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const AiVpnApp());
}

class AiVpnApp extends StatelessWidget {
  const AiVpnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ai vpn',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme.dark(
          primary: Colors.greenAccent,
        ),
      ),
      home: const VpnHomeScreen(),
    );
  }
}

class VpnHomeScreen extends StatefulWidget {
  const VpnHomeScreen({super.key});

  @override
  State<VpnHomeScreen> createState() => _VpnHomeScreenState();
}

class _VpnHomeScreenState extends State<VpnHomeScreen> {
  bool isConnected = false;
  final String adUrl = 'https://www.profitableratecpmnetwork.com/ets4kwwy5d?key=ca23c943a4366ce3651aa6254f44dace';

  @override
  void initState() {
    super.initState();
    _openAdLink();
  }

  Future<void> _openAdLink() async {
    final Uri url = Uri.parse(adUrl);
    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void _toggleVpn() {
    _openAdLink();
    setState(() {
      isConnected = !isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ai vpn', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black26,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isConnected ? Icons.verified_user : Icons.gpp_maybe,
              size: 100,
              color: isConnected ? Colors.greenAccent : Colors.redAccent,
            ),
            const SizedBox(height: 20),
            Text(
              isConnected ? "CONNECTED" : "DISCONNECTED",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isConnected ? Colors.greenAccent : Colors.redAccent,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: _toggleVpn,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isConnected ? Colors.greenAccent : Colors.redAccent,
                  boxShadow: [
                    BoxShadow(
                      color: (isConnected ? Colors.greenAccent : Colors.redAccent).withOpacity(0.4),
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: const Icon(
                  Icons.power_settings_new,
                  size: 70,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              isConnected ? "Tap to Disconnect" : "Tap to Connect",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


























 
















