import 'package:ddd_raja/presentation/location/providers/location_controller.dart';
import 'package:ddd_raja/presentation/location/widgets/select_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationPage extends ConsumerStatefulWidget {
  const LocationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationPageState();
}

class _LocationPageState extends ConsumerState<LocationPage> {
  String? idKota1;
  String? idKota2;
  bool _isLoading = false;

  void getIdKota1(String id) => idKota1 = id;
  void getIdKota2(String id) => idKota2 = id;

  Future<void> calculate() async {
    setState(() => _isLoading = true);
    if (idKota1 != null && idKota2 != null) {
      await ref
          .read(priceControllerProvider.notifier)
          .getPrice(PriceParams(idFrom: idKota1!, idTo: idKota2!));
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final priceActivity = ref.watch(priceControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Raja Ongkir'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProviderScope(
                overrides: [locationControllerProvider, cityControllerProvider],
                child: SelectLocation(
                  funGetCity: getIdKota1,
                  title: 'From',
                ),
              ),
              const SizedBox(height: 20),
              ProviderScope(
                overrides: [locationControllerProvider, cityControllerProvider],
                child: SelectLocation(
                  funGetCity: getIdKota2,
                  title: 'To',
                  showLoading: true,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: _isLoading ? null : calculate,
                child: Text(
                  priceActivity.value == 0
                      ? _isLoading
                          ? 'Loading...'
                          : 'Hitung'
                      : _isLoading
                          ? 'Loading...'
                          : 'Harga: ${priceActivity.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
