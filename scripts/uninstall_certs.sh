#!/bin/sh

security delete-keychain ios-build.keychain
rm -f "~/Library/MobileDevice/Provisioning Profiles/UIImageEffects_Ad_Hoc.mobileprovision"
