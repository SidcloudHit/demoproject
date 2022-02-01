/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MsgService;

import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/**
 *
 * @author acer
 */
public class SMS {

    public String notifysms(String msg, String mobileno_To) {
        java.lang.String result = "";
        // Create a trust manager that does not validate certificate chains
        TrustManager[] trustAllCerts = new TrustManager[]{
            new X509TrustManager() {
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }

                public void checkClientTrusted(X509Certificate[] certs, String authType) {
                }

                public void checkServerTrusted(X509Certificate[] certs, String authType) {
                }
            }};

        // Ignore differences between given hostname and certificate hostname
        HostnameVerifier hv = new HostnameVerifier() {
            public boolean verify(String hostname, SSLSession session) {
                return true;
            }
        };

        // Install the all-trusting trust manager
        try {
            SSLContext sc = SSLContext.getInstance("SSL");
            sc.init(null, trustAllCerts, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
            HttpsURLConnection.setDefaultHostnameVerifier(hv);
//tripuranoc.sms
            java.lang.String gatewayuname = "tripuranoc.sms";
            //java.lang.String gatewaypwd = "";
            java.lang.String senderId = "NICSMS";
            
            java.lang.String appId = "04e4c832245c862527f902318e781d256826b09ed3b64cba4b612b2559ad04a3";
            
            /*modified part by Arindam*/
            java.lang.String mobileNumber = "";
            mobileNumber = "91" + mobileno_To;
            mainlib.tokengeneration tcg = new mainlib.tokengeneration();
            tcg.generatetokenwithseed4sms(mobileno_To, msg, gatewayuname, senderId, appId);
            result = sendsmsNew(tcg.getToken(), tcg.getSeed(), mobileno_To, msg, gatewayuname, senderId, appId);

//            tcg.generatetokenwithseed4sms(mobileno_To, msg, gatewayuname, senderId);
//            result += sendsms(tcg.getToken(), tcg.getSeed(), mobileNumber, msg, gatewayuname, senderId);

            /*existing part*/
//            String mobileNumber = "";
//            mobileNumber = "91" + mobileno_To;
//            //String otp = "";
//
//            tcg.generatetokenwithseed4sms(mobileNumber, msg, gatewayuname, senderId);
//
//            String result = "";//
//            result = sendsms(tcg.getToken(), tcg.getSeed(), mobileNumber, msg, gatewayuname, senderId);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

//    public void notifyotp( String otp,String mobileno_To) {
//
//        // Create a trust manager that does not validate certificate chains
//        TrustManager[] trustAllCerts = new TrustManager[]{
//            new X509TrustManager() {
//                public X509Certificate[] getAcceptedIssuers() {
//                    return new X509Certificate[0];
//                }
//
//                public void checkClientTrusted(X509Certificate[] certs, String authType) {
//                }
//
//                public void checkServerTrusted(X509Certificate[] certs, String authType) {
//                }
//            }};
//
//        // Ignore differences between given hostname and certificate hostname
//        HostnameVerifier hv = new HostnameVerifier() {
//            public boolean verify(String hostname, SSLSession session) {
//                return true;
//            }
//        };
//
//        // Install the all-trusting trust manager
//        try {
//            SSLContext sc = SSLContext.getInstance("SSL");
//            sc.init(null, trustAllCerts, new SecureRandom());
//            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
//            HttpsURLConnection.setDefaultHostnameVerifier(hv);
//
//            java.lang.String gatewayuname = "";
//            //java.lang.String gatewaypwd = "";
//            java.lang.String senderId = "";
//
//            mainlib.tokengeneration tcg = new mainlib.tokengeneration();
//
//            String mobileNumber = "";
//            mobileNumber = "91" + mobileno_To;
//            //String otp = "";
//
//            tcg.generatetokenwithseed4sms(mobileNumber, otp, gatewayuname, senderId);
//
//            String result = "";
//
//            result = sendsms(tcg.getToken(), tcg.getSeed(), mobileNumber, otp, gatewayuname, senderId);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }

    private static String sendsmsNew(java.lang.String intoken, java.lang.String inseed, java.lang.String mobileno, java.lang.String smsmsg, java.lang.String username, java.lang.String senderid, java.lang.String appid) {
        main.Services_Service service = new main.Services_Service();
        main.Services port = service.getServicesPort();
        return port.sendsmsNew(intoken, inseed, mobileno, smsmsg, username, senderid, appid);
    }

    
    
    
}



