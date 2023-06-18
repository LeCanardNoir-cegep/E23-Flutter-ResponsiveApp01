import 'package:my_first_responsive_app/layout/Landscape.dart';
import 'package:my_first_responsive_app/layout/portrait.dart';

import '../shared_import.dart';

class Responsive extends StatelessWidget {
  Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Portrait();
        }
        return Landscape();
      },
    );
  }
}
