using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Telephony;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Wplaty_v2.Droid;

[assembly: Xamarin.Forms.Dependency(typeof(DualSimSmsService))]
namespace Wplaty_v2.Droid
{
    public class DualSimSmsService : IDualSimSmsService
    {
        public void SendSms(string phoneNumber, string message, int simSlot)
        {
            if (simSlot < 0 || simSlot > 1)
                throw new ArgumentException("Invalid SIM slot. Must be 0 or 1.");

            SmsManager smsManager;
            if (simSlot == 0)
            {
                smsManager = SmsManager.Default;
            }
            else
            {
                SubscriptionManager subscriptionManager = (SubscriptionManager)Android.App.Application.Context.GetSystemService("telephony_subscription_service");
                if (subscriptionManager.ActiveSubscriptionInfoCount < 2)
                    throw new InvalidOperationException("No second SIM card available.");

                SubscriptionInfo secondSim = subscriptionManager.GetActiveSubscriptionInfoForSimSlotIndex(1);
                smsManager = SmsManager.GetSmsManagerForSubscriptionId(secondSim.SubscriptionId);
            }

            smsManager.SendTextMessage(phoneNumber, null, message, null, null);
        }
    }
}