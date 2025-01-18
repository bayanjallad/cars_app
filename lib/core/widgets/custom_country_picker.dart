import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/string.dart';
import 'package:cars_app/core/widgets/custom_textfield.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCountryPicker extends StatefulWidget {
  const CustomCountryPicker({super.key});

  @override
  State<CustomCountryPicker> createState() => _CustomCountryPickerState();
}

class _CustomCountryPickerState extends State<CustomCountryPicker> {
  TextEditingController mobailController = TextEditingController();
  Country country = CountryParser.parseCountryCode("SY");
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefix: InkWell(
        child: SizedBox(
          width: 75,
          child: Row(
            children: [
              Text('  ${country.flagEmoji}'),
              const Icon(Icons.keyboard_arrow_down_outlined),
              const Text(" |")
            ],
          ),
        ),
        onTap: () {
          showCountryPicker(
            context: context,
            onSelect: (country) {
              setState(() {
                this.country = country;
              });
            },
            countryListTheme: CountryListThemeData(
              bottomSheetHeight: 600,
              searchTextStyle: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: gray, fontWeight: FontWeight.w700),
              borderRadius: BorderRadius.circular(12),
              inputDecoration: InputDecoration(
                hintText: Strings.SEARCHCOUNTRYHERE.tr,
                prefixIcon: const Icon(
                  Icons.search,
                  color: gray,
                ),
              ),
            ),
          );
        },
      ),
      hintStyle: Theme.of(context)
          .textTheme
          .labelLarge!
          .copyWith(color:gray, fontWeight: FontWeight.w500),
      controller: mobailController,
      fillColor: Theme.of(context).cardColor,
      hintText: Strings.PHONENUMBER.tr,
      keyboardType: TextInputType.number,
      maxLines: 1,
      obscureText: false,
      onSubmit: (phoneNumber) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('+${country.flagEmoji} $phoneNumber')));
      },
      onTap: () {},
      suffix: null,
    );
  }
}
