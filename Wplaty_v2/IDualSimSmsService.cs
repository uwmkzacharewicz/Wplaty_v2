using System;
using System.Collections.Generic;
using System.Text;

namespace Wplaty_v2
{
    public interface IDualSimSmsService
    {
        void SendSms(string phoneNumber, string message, int simSlot);
    }
}
