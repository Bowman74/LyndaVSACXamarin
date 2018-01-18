appcenter login --token $VSAC_Token

appcenter test run uitest --app "KevinsVSACClass/XamarinApp-iOS" --devices 73075a0d --app-path "$APPCENTER_SOURCE_DIRECTORY/src/VSACXamarin/iOS/bin/iPhone/$APPCENTER_BRANCH/VSACXamarin.ios.ipa"  --test-series "master" --locale "en_US" --build-dir "$APPCENTER_SOURCE_DIRECTORY/src/VSACXamarin.UITest.ios/bin/reslease"

appcenter logout