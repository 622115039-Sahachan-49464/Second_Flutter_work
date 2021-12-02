import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorPage> {
  TextEditingController quantity = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    super.initState();
    result.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/product2.jpg",width: 200,),
              const Text(
                "Calculator",
                style: TextStyle(
                  fontFamily: 'SFProText-Regular',
                ),
              ),
              TextField(
                controller: quantity,
                decoration: const InputDecoration(
                  labelText: "item Amount",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: price,
                decoration: const InputDecoration(
                  labelText: "item Price",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  var cal = double.parse(quantity.text) * double.parse(price.text);
                  setState(() {
                    result.text = "you buy ${quantity.text} item and each item has ${price.text} Bath and it cost $cal Bath";
                  });
                },
                child: const Text("Calculate"),
              ),
              const SizedBox(height: 20,),
              Text(result.text)
            ],
          ),
        )
    );
  }
}
