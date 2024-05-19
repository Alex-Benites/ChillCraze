import 'package:chill_craze_delivery/screens/authentication/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:chill_craze_delivery/screens/home/views/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Row(
            children: [
              Image.asset(
                "assets/8.png",
                scale: 14,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Ice Creams",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.cart)),
            IconButton(
                onPressed: () {
                  context.read<SignInBloc>().add(SignOutRequired());
                },
                icon: const Icon(CupertinoIcons.arrow_right_to_line))
          ],
        ),
        //este body de aqui es para agregar contenedores de manera como un GridPane en Scene Builder
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 4,
              itemBuilder: (context, int i) {
                return Material(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      //aqui escribimos el codigo necesario para al hacer click sobre el helado que queramos nos direccione a la ventana con todos los detalles de ese helado.
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const DetailsScreen() ,
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/1.png"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                    "NONE-VEG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                    "🌶️ Balance",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "Banana Split",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "Crafting joy: your Ice-cream, your rules, best taste!",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$6.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context).colorScheme.primary,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Text(
                                      "\$8.00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.lineThrough
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                        
                                  }, 
                                  icon: const Icon(CupertinoIcons.add_circled_solid)
                                )
                              ],
                            )
                          ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
