import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   leading: ClipOval(
        //     child: Image.network(
        //         'https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80'),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: CircleAvatar(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80'),
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color(0xffFFFFFF),
                    ),
                    backgroundColor: Color(0xff1A4F2F),
                  )
                ],
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      "Let's find your",
                      style: TextStyle(
                          color: Color(0xff1A4F2F),
                          // fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Plants!           ',
                    style: TextStyle(
                        color: Color(0xff1A4F2F),
                        //  fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Search a plant',
                        filled: true,
                        fillColor: Color(0xffE0E9E4),
                        hintStyle: TextStyle(
                            color: Color(0xff1A4F2F),
                            fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff1A4F2F),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.mic),
                          color: Color(0xff1A4F2F),
                          onPressed: () {},
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(18),
                        )
                        //  border: InputBorder.none
                        ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffE0E9E4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Recommended',
                          style:
                              TextStyle(color: Color(0xff1A4F2F), fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Top'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Indoor'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Outdoor'),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Text('source dart are in the area')
                  Stack(
                    children: [
                      Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQprg14RQsTPk_0Rw8rtTkU8_ajk9RjHxpmIcGgQRwy&s'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Text(
                                        'Indoor',
                                        style: TextStyle(
                                            color: Color(0xff1A4F2F),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      'Snake Plant',
                                      style: TextStyle(
                                          color: Color(0xff1A4F2F),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQprg14RQsTPk_0Rw8rtTkU8_ajk9RjHxpmIcGgQRwy&s'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQprg14RQsTPk_0Rw8rtTkU8_ajk9RjHxpmIcGgQRwy&s'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQprg14RQsTPk_0Rw8rtTkU8_ajk9RjHxpmIcGgQRwy&s'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                    //  child:
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 130),
                child: Column(
                  children: [
                    Text(
                      'Recently viewed !!!',
                      style: TextStyle(color: Color(0xff1A4F2F), fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: Color(0xffE0E9E4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQprg14RQsTPk_0Rw8rtTkU8_ajk9RjHxpmIcGgQRwy&s',
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Calathea',
                                        style: TextStyle(
                                            color: Color(0xff1A4F2F),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("It's spines don't grow")
                                    ],
                                  ),
                                ],
                              ),

                              // child: Text(
                              //   'source data ',
                              //   style:
                              //       TextStyle(color: Color(0xff1A4F2F), fontSize: 15),
                              // ),
                            ),
                          ),
                          // Text('data us sou')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0, -4), blurRadius: 6)
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(''),
                    Icon(
                      Icons.home,
                      color: Color(0xff1A4F2F),
                      size: 40,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(''),
                    Icon(
                      Icons.image_search,
                      color: Color.fromARGB(255, 197, 231, 212),
                      size: 40,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(''),
                    Icon(
                      Icons.event_note,
                      color: Color.fromARGB(255, 197, 231, 212),
                      size: 40,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(''),
                    Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 197, 231, 212),
                      size: 40,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
