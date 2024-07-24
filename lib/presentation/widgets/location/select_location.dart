import 'package:ddd_raja/application/location/location_controller.dart';
import 'package:ddd_raja/presentation/widgets/location/dropdown_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectLocation extends ConsumerStatefulWidget {
  const SelectLocation({
    required this.funGetCity,
    required this.title,
    this.showLoading = false,
    super.key,
  });

  final Function(String) funGetCity;
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(locationControllerProvider.notifier).getLocationProvinceEvent();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final locationToState = ref.watch(locationControllerProvider);

    return locationToState.locationFailureOrSuccess.fold(
      () => widget.showLoading
          ? const CircularProgressIndicator()
          : const SizedBox(),
      (t) {
        return t.fold(
          (l) => Text('error: $l'),
          (_) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('${widget.title}:'),
                  ),
                  const SizedBox(height: 30),
                  const Text('Province'),
                  const SizedBox(height: 10),
                  DropDownLocation(
                    title: 'Select Province',
                    items: locationToState.provinceData.results
                        .map((e) => DropdownMenuItem(
                              value: e.provinceId,
                              child: Text(e.province),
                            ))
                        .toList(),
                    onChanged: (p0) {
                      setState(() {
                        firstSelect = null;
                        secondSelect = null;
                        firstSelect = p0 ?? '1';
                      });
                      ref
                          .read(locationControllerProvider.notifier)
                          .getLocationCityEvent(p0 ?? '1');
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
                          DropDownLocation(
                            title: 'Select City',
                            items: locationToState.cityData.results
                                .map((e) => DropdownMenuItem(
                                      value: e.cityId,
                                      child: Text(e.cityName),
                                    ))
                                .toList(),
                            onChanged: (p0) {
                              setState(() {
                                secondSelect = p0 ?? '1';
                                widget.funGetCity(p0 ?? '1');
                              });
                            },
                            value: secondSelect,
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
