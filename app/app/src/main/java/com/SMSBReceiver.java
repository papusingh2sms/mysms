package com.mysms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.widget.Toast;

/**
 * SMSBReceiver Class to Receive and Read SMS
 * updated by on 15/01/2025.
 */
public class SMSBReceiver extends BroadcastReceiver {
    public static final String SMS_BUNDLE = "pdus";

    @Override
    public void onReceive(Context context, Intent intent) {
        Bundle intentExtras = intent.getExtras();
        if (intentExtras != null) {
            Object[] sms = (Object[]) intentExtras.get(SMS_BUNDLE);
            if (sms != null) {
                StringBuilder smsMessageStr = new StringBuilder();
                for (Object sm : sms) {
                    SmsMessage smsMessage = SmsMessage.createFromPdu((byte[]) sm);
                    if (smsMessage != null) {
                        String smsBody = smsMessage.getMessageBody();
                        String address = smsMessage.getOriginatingAddress();

                        smsMessageStr.append("SMS From: ").append(address).append("\n");
                        smsMessageStr.append(smsBody).append("\n");
                    }
                }
                Toast.makeText(context, smsMessageStr.toString(), Toast.LENGTH_SHORT).show();

                // Update the UI with the message
                MainActivity inst = MainActivity.instance();
                if (inst != null) {
                    inst.updateList(smsMessageStr.toString());
                }
            }
        }
    }
}
