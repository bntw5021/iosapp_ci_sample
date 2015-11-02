#!/bin/sh
if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  exit 0
fi
if [[ "$TRAVIS_BRANCH" != "master" ]]; then
  exit 0
fi

rm -rf ./build/*
xcodebuild -project UIImageEffects.xcodeproj -scheme UIImageEffects -sdk iphoneos -configuration Release CODE_SIGN_IDENTITY='iPhone Distribution: Daisuke Watanabe (4J4BN4PUNL)' archive -archivePath ./build/UIImageEffects.xcarchive
xcodebuild -exportArchive -exportFormat IPA -archivePath ./build/UIImageEffects.xcarchive -exportPath ./build/UIImageEffects.ipa -exportProvisioningProfile 'UIImageEffects'
