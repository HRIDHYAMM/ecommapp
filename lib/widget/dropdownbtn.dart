import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
String ?selectedItem;
class Dropdownbtn extends StatelessWidget {
  final List<String>items;
  final String SelectedItemName;
  final Function(String?)onChangedValue;
  const Dropdownbtn({super.key, required this.items, required this.SelectedItemName,  required this.onChangedValue});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              SelectedItemName,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedItem,
            onChanged: (String? value) {
             onChangedValue(value);
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: 140,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}