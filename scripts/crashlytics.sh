#!/bin/sh

./Crashlytics.framework/submit $API_KEY $BUILD_SECRET \
  -ipaPath ./build/UIImageEffects.ipa \
  -notifications YES
