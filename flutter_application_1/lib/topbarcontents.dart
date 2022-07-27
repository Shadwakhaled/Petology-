import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  var ishover = false;

  get onHover => null;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(247, 249, 177, 83),

            Color.fromARGB(247, 157, 106, 34),
            Color.fromARGB(247, 125, 86, 36),
            Color.fromARGB(247, 85, 57, 19),
            Color.fromARGB(247, 53, 35, 11),
            //add more colors for gradient
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Image.asset('img/logo1.png'),
            SizedBox(width: 80),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              },
              onTap: () {},
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'About us',
                  style: TextStyle(
                      color: _isHovering[0] ? Colors.white : Color(0xFF8c8c8c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[0],
                  child: Container(
                    height: 4,
                    width: 60,
                    color: Color(0xfffee3c5),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
                });
              },
              onTap: () {},
              child: Column(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        color:
                            _isHovering[1] ? Colors.white : Color(0xFF8c8c8c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[1],
                    child: Container(
                      height: 4,
                      width: 60,
                      color: Color(0xfffee3c5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
                });
              },
              onTap: () {},
              child: Column(
                children: [
                  Text(
                    'Services',
                    style: TextStyle(
                        color:
                            _isHovering[2] ? Colors.white : Color(0xFF8c8c8c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[0],
                    child: Container(
                      height: 4,
                      width: 60,
                      color: Color(0xfffee3c5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
                });
              },
              onTap: () {},
              child: Column(
                children: [
                  Text(
                    'Request',
                    style: TextStyle(
                        color:
                            _isHovering[3] ? Colors.white : Color(0xFF8c8c8c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[3],
                    child: Container(
                      height: 4,
                      width: 60,
                      color: Color(0xfffee3c5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.white),
                  primary: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              onPressed: null,
              child: const Text(
                'Sign up',
                style: TextStyle(color: Color(0xffffffff)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: onHover((isHovered) {
                final Color = isHovered ? Colors.red : Colors.blue;
                //return

                //onEnter: (event) => _mouseEnter(true),
                //onExit: (event) => _mouseEnter(true),

                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.white),
                      primary:
                          _isHovering[5] ? Colors.amber : Colors.amberAccent,
                      // borderRadius: BorderRadius.circular(28),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: null,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
    //);
  }
}
