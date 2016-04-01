#!/bin/sh
security delete-keychain ios-build.keychain
rm -f ~/Library/MobileDevice/Provisioning\ Profiles/iOS_Team_Provisioning_Profile_.mobileprovision.enc
