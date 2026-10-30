
import 'package:flutter/material.dart';

class Clone_loginStateless extends StatelessWidget {
  const Clone_loginStateless({super.key});

  void _continueWith(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Continue with $provider')),
    );
  }

  Widget _buildProviderButton(BuildContext context, String label) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton(
        onPressed: () => _continueWith(context, label),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
        ),
        child: Text('Continue with $label'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In (Stateless)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email address...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const TextField(
                // Tetap disembunyikan (obscureText: true) karena tanpa State
                // tidak ada tempat menyimpan status show/hide password.
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _continueWith(context, 'Email'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Log In'),
            ),
            const SizedBox(height: 16),
            _buildProviderButton(context, 'Google'),
            _buildProviderButton(context, 'Apple'),
            _buildProviderButton(context, 'Binance'),
            _buildProviderButton(context, 'Wallet'),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // Pindah halaman lewat Navigator, BUKAN setState.
                  // Widget baru (SignUpPageStateless) dipasang oleh Flutter,
                  // bukan widget lama yang mengubah dirinya sendiri.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignUpPageStateless(),
                    ),
                  );
                },
                child: const Text('Belum punya akun? Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPageStateless extends StatelessWidget {
  const SignUpPageStateless({super.key});

  void _continueWith(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Continue with $provider')),
    );
  }

  Widget _buildProviderButton(BuildContext context, String label) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton(
        onPressed: () => _continueWith(context, label),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
        ),
        child: Text('Continue with $label'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up (Stateless)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProviderButton(context, 'Google'),
            _buildProviderButton(context, 'Apple'),
            _buildProviderButton(context, 'Binance'),
            _buildProviderButton(context, 'Wallet'),
            const SizedBox(height: 16),
            const Text(
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email address...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                // Checkbox non-interaktif (statis): tanpa State, tidak ada
                // tempat menyimpan status checked/unchecked.
                Icon(Icons.check_box, color: Colors.blue),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Please keep me updated by email with the latest crypto '
                    'news, research findings, reward programs, event '
                    'updates, coin listings and more information from '
                    'CoinMarketCap.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _continueWith(context, 'Email'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Create an account'),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // Kembali ke halaman sebelumnya di stack Navigator.
                  Navigator.pop(context);
                },
                child: const Text('Sudah punya akun? Log In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}