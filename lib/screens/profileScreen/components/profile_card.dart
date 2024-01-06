import 'package:flutter/material.dart';

import '../../../helper/const.dart';



class ProfileCard extends StatefulWidget {
  const ProfileCard();

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            children: [

              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: kPrimaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "إسلام محمد الدسوقي",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.mainAppColor,
                            fontFamily: "FontBold",
                          ),
                        ),
                      ),
                      const SizedBox(width: 18),

                    ],
                  ),
                  Text(
                    "منذ يناير٢٠٢٠",
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontFamily: "FontBold",
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.mainAppColor,
                    width: 4,
                  ),
                ),
                child: Icon(
                  Icons.person,
                  size: MediaQuery.of(context).size.width * .12,
                  color: AppColors.mainAppColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
