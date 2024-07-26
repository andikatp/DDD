import 'package:ddd_raja/presentation/location/providers/location_controller.dart';
import 'package:ddd_raja/presentation/location/widgets/dropdown_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectLocation extends ConsumerStatefulWidget {
  const SelectLocation({
    required this.funGetCity,
    required this.title,
    this.showLoading = false,
    super.key,
  });

  final void Function(String) funGetCity;
  final String title;
  final bool showLoading;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ToWidgetState();
}

class _ToWidgetState extends ConsumerState<SelectLocation> {
  String? firstSelect;
  String? secondSelect;

  @override
  void initState() {
    super.initState();
  }

  void showError(String error) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            content: Text(
              error,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final activity = ref.watch(locationControllerProvider);

    final asyncLocation = ref.watch(allLocationsProvider);

    return asyncLocation.when(
      data: (value) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Text('${widget.title}:'),
            ),
            const SizedBox(height: 30),
            const Text('Province'),
            const SizedBox(height: 10),
            DropDownLocation(
              title: 'Select Province',
              items: value.results
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.provinceId,
                      child: Text(e.province),
                    ),
                  )
                  .toList(),
              onChanged: (p0) {
                setState(() {
                  firstSelect = null;
                  secondSelect = null;
                  firstSelect = p0 ?? '1';
                });
              },
              value: firstSelect,
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: firstSelect != null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('City'),
                  const SizedBox(height: 10),
                  Consumer(
                    builder: (context, ref, child) {
                      final cityActivity = ref.watch(
                        allCityFromProvinceProvider(firstSelect ?? '1'),
                      );
                      return switch (cityActivity) {
                        AsyncData(:final value) => DropDownLocation(
                            title: 'Select City',
                            items: value.results
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.cityId,
                                    child: Text(e.cityName),
                                  ),
                                )
                                .toList(),
                            onChanged: (p0) {
                              setState(() {
                                secondSelect = p0 ?? '1';
                                widget.funGetCity(p0 ?? '1');
                              });
                            },
                            value: secondSelect,
                          ),
                        AsyncError() => const Text(
                            'Oops, something unexpected happened',
                          ),
                        _ => const CircularProgressIndicator(),
                      };
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      error: (error, stackTrace) =>
          const Text('Oops, something unexpected happened'),
      loading: () => widget.showLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : const SizedBox(),
    );
  }
}
