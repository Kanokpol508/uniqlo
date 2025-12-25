import 'package:flutter/material.dart';
import 'package:uniqlo/model/uniqlo.dart';

class UniqloDetail extends StatefulWidget{
  Uniqlo uniqlo;
  UniqloDetail({super.key, required this.uniqlo});

  @override
  State<StatefulWidget> createState() {
    return UniqloDetailState();
  }
}

class UniqloDetailState extends State<UniqloDetail> {
  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Uniqlo Detail')),
      body: Column(
        children: [
          Image(image: AssetImage(widget.uniqlo.imgUrl)),
          const SizedBox(height: 16.0),
          Text(
            widget.uniqlo.imgTitle,
            style: const TextStyle(color: Colors.green, fontSize: 20),
          ),

          const SizedBox(height: 16.0),
          Text(
              widget.uniqlo.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),

              textAlign: TextAlign.center,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: widget.uniqlo.increment.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.uniqlo.increment[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${ingredient.price * sliderValue} ${ingredient.unit} ${ingredient.name}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),


            Slider(
              min: 1.0,
              max: 10.0,
              divisions: 10,
              label: '${(sliderValue)} servings',
              value: sliderValue.toDouble(),

              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue.toInt();
                });
              },
            ),
        ],
      ),
    );
  }
}