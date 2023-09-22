import 'package:flutter/material.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({
    super.key,
    required this.data,
    required this.num,
  });
  final int num;
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xff004E34)),
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.grey,
              spreadRadius: -2,
              blurRadius: 3)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 26,
            height: 30,
            decoration: const ShapeDecoration(
              color: Color(0xFF004E34),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
              ),
            ),
            child: Center(
                child: Text(
              '$num',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Text(
                '${data["content"]}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF013524),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                '${data["description"]}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF287E61),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 28,
                height: 28,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 2, color: Color(0xFF004E34)),
                  ),
                ),
                
                  child: Center(
                    child: Text(
                      
                      '${data["count"]}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF004E34),
                        fontSize: 12,
                        
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}
