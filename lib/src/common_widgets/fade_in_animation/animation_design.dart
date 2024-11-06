import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class TfadeInAnimation extends StatelessWidget {
  TfadeInAnimation({
    super.key,
    required this.durationInMs,
    required this.animate,
    required this.child,
  });

  final Controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: Controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
            Controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: Controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: Controller.animate.value
            ? animate!.rightAfter
            : animate!.rigthBefore,
        child: AnimatedOpacity(
          opacity: Controller.animate.value ? 1 : 0,
          duration: Duration(milliseconds: durationInMs),
          child: child,
          // child: const Image(image: AssetImage(tSplashTopIcon)),
        ),
      ),
    );
  }
}
