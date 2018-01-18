using System;
using System.Collections.Generic;
using System.Linq;

using Foundation;
using UIKit;
using Microsoft.AppCenter;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;

namespace VSACXamarin.iOS
{
    [Register("AppDelegate")]
    public partial class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
    {
        public override bool FinishedLaunching(UIApplication uiApplication, NSDictionary launchOptions)
        {

#if !DEBUG
            AppCenter.Start(Constants.VsacApiKey, typeof(Analytics), typeof(Crashes));
#endif
            global::Xamarin.Forms.Forms.Init();
            LoadApplication(new App());

#if ENABLE_TEST_CLOUD
            Xamarin.Calabash.Start();
#endif

            return base.FinishedLaunching(uiApplication, launchOptions);
        }
    }
}
