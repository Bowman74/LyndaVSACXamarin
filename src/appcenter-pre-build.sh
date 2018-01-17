#!/usr/bin/env bash
if [ "$APPCENTER_BRANCH" == "QA" ];
then
/usr/libexec/plistbuddy -c "Set :CFBundleDisplayName VSACXamarin.$APPCENTER_BRANCH" "iOS/Info.plist"
fi

sed -i -e "s/\[VASC_API_KEY]/$VSAC_Key/g" Constants.cs