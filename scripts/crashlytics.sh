#!/bin/sh

./Crashlytics.framework/submit $API_KEY $BUILD_SECRET \
  -ipaPath ./build/UIImageEffects.ipa \
  -emails watanabe1205@gmail.com﻿
  -notifications YES
