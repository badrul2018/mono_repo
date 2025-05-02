#!/bin/bash

# CHANGE THESE
TARGET_NAME="mobile"
BUNDLE_ID="com.badrulhaque2018.mobile"
XCODEPROJ_PATH="apps/mobile/ios"
SCHEME_NAME="mobile"

echo "🧹 Resetting iOS Signing & Bundle Identifier..."
cd "$XCODEPROJ_PATH" || exit 1

# 1. Update bundle identifier
echo "🛠 Setting bundle identifier to $BUNDLE_ID..."
plutil -replace CFBundleIdentifier -string "$BUNDLE_ID" "$TARGET_NAME/Info.plist"

# 2. Reset code signing manually (clear old build settings)
echo "⚙️ Cleaning old code signing settings..."
defaults delete "$PWD/$TARGET_NAME.xcodeproj/project.pbxproj" PROVISIONING_PROFILE_SPECIFIER 2>/dev/null
defaults delete "$PWD/$TARGET_NAME.xcodeproj/project.pbxproj" CODE_SIGN_IDENTITY 2>/dev/null
defaults delete "$PWD/$TARGET_NAME.xcodeproj/project.pbxproj" DEVELOPMENT_TEAM 2>/dev/null

# 3. Let Xcode regenerate correct signing
echo "🛠 Enabling automatic signing via Xcodebuild..."
xcodebuild -project "$TARGET_NAME.xcodeproj" \
  -scheme "$SCHEME_NAME" \
  -destination 'platform=iOS Simulator,name=iPhone 15' \
  -allowProvisioningUpdates \
  -configuration Debug \
  clean build

echo "✅ Done! Bundle ID set to: $BUNDLE_ID and Signing reset."
