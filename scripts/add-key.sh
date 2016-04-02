#!/bin/sh
KEY_CHAIN=$KEY_CHAIN.keychain
security create-keychain -p travis $KEY_CHAIN

# Create a custom keychain
security create-keychain -p travis $KEY_CHAIN

# Make the custom keychain default, so xcodebuild will use it for signing
security default-keychain -s $KEY_CHAIN

# Unlock the keychain
security unlock-keychain -p travis $KEY_CHAIN

# Set keychain timeout to 1 hour for long builds
# see http://www.egeek.me/2013/02/23/jenkins-and-xcode-user-interaction-is-not-allowed/
security set-keychain-settings -t 3600 -u $KEY_CHAIN

# Add certificates to keychain and allow codesign to access them
security import ./scripts/certs/apple.cer -k ~/Library/Keychains/$KEY_CHAIN -T /usr/bin/codesign
security import ./scripts/certs/dist.cer -k ~/Library/Keychains/$KEY_CHAIN -T /usr/bin/codesign
security import ./scripts/certs/dist.p12 -k ~/Library/Keychains/$KEY_CHAIN -P $KEY_PASSWORD -T /usr/bin/codesign


echo "list keychains: "
security list-keychains
echo " ****** "

echo "find indentities keychains: "
security find-identity -p codesigning  ~/Library/Keychains/$KEY_CHAIN
echo " ****** "

# Put the provisioning profile in place
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp "./scripts/profile/$PROFILE_NAME.mobileprovision" ~/Library/MobileDevice/Provisioning\ Profiles/


