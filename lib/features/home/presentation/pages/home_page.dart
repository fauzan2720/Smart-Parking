import 'package:flutter/material.dart';

import '../../../../core.dart';
import '../../../parking/presentation/pages/parking_now_page.dart';
import '../../../parking/presentation/pages/pay_page.dart';
import '../../../parking/presentation/widgets/history_card.dart';
import '../../../profile/presentation/pages/top_up_saldo_page.dart';
import '../../../vehicle/presentation/pages/vehicle_page.dart';
import '../widgets/header_in_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeaderInHome(
          onTopUpSaldoTap: () => context.push(const TopUpSaldoPage()),
          onParkingTap: () => context.push(const ParkingNowPage()),
          onVehicleTap: () => context.push(const VehiclePage()),
          onPayTap: () => context.push(PayPage(
            onDetect: (value) {
              'Barcode found! $value'.infoBar(context);
              context.popToRoot();
            },
          )),
        ),
        15.0.height,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          padding: const EdgeInsets.symmetric(
              vertical: 15.0, horizontal: AppSizes.primary),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.card),
            color: AppColors.white,
            boxShadow: AppBoxShadow.card,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Promo 12.12',
                style: TextStyle(
                  fontWeight: FW.medium,
                ),
              ),
              10.0.height,
              const Text(
                'Parkir pada tanggal 12 bulan 12 diskon 50% berlaku di Mall Lippo Plaza Jember',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
              15.0.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '*syarat dan ketentuan berlaku',
                    style: TextStyle(
                      fontSize: 11.0,
                      color: AppColors.grey,
                    ),
                  ),
                  Container(
                    height: 22.0,
                    width: 62.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.primary,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'Klaim',
                          style: TextStyle(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        40.0.height,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.primary),
          child: Text(
            'Anda sekarang sedang parkir',
            style: TextStyle(
              fontWeight: FW.semibold,
              fontSize: 16.0,
            ),
          ),
        ),
        20.0.height,
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          itemCount: 1,
          itemBuilder: (context, index) => const HistoryCard(),
        ),
        30.0.height,
      ],
    );
  }
}
