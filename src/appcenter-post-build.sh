appcenter login --token $VSAC_Token

appcenter test run uitest --app "KevinsVSACClass/XamarinApp-iOS" --devices 73075a0d --app-path "$APPCENTER_SOURCE_DIRECTORY/src/ios/bin/iphone/$APPCENTER_BRANCH/VSACXamarin.ios.ipa"  --test-series "master" --locale "en_US" --build-dir "$APPCENTER_SOURCE_DIRECTORY/src/VSACXamarin.UITest.Ios/bin/release"

appcenter logout