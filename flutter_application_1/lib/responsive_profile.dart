import 'package:flutter/material.dart';

class ResponsiveProfile extends StatelessWidget {
  const ResponsiveProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Profile'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isLandscape =
                MediaQuery.of(context).orientation == Orientation.landscape;
            final isWide = constraints.maxWidth >= 600 || isLandscape;

            return SingleChildScrollView(
              child: isWide
                  ? const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: ProfileHeader()),
                        Expanded(child: ProfileInfo()),
                      ],
                    )
                  : const Column(
                      children: [
                        ProfileHeader(),
                        ProfileInfo(),
                      ],
                    ),
            );
          },
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Zulfa Riana',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          const Text('Mahasiswa Ilmu Komputer'),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('zulfa@email.com'),
              ),
              const ListTile(
                leading: Icon(Icons.school),
                title: Text('Program Studi'),
                subtitle: Text('D3 Manajemen Informatika'),
              ),
              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Universitas'),
                subtitle: Text('Universitas Lampung'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}