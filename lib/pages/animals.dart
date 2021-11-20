import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_four/provider/animals_model.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Build method called');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animals"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: Consumer<AnimalsModel>(
              builder: (ctx, animal, _) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            animal.getSingleAnimalInfo.url,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                        ),
                      ),
                      Text(
                        animal.getSingleAnimalInfo.description,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          GridView.builder(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () => Provider.of<AnimalsModel>(context, listen: false)
                      .setAnimal(index),
                  splashColor: Colors.black,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(Provider.of<AnimalsModel>(context)
                          .getAnimalInfo[index]['name']),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
