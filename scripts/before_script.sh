#!/bin/sh

# キーチェーンにApple IDのパスワードを追加する
security add-internet-password -s itunesconnect.apple.com -a "watanabe1205@hotmail.com" -w $ITUNES_PASSWORD

which fastlane
