<%@ WebHandler Language="C#" Class="Captcha" %>

using System;
using System.Web;
using System.Drawing;
using System.Web.SessionState;

public class Captcha : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "image/jpeg";
        CaptchaImage captcha = new CaptchaImage();
        string str = captcha.DrawNumbers(5);
        if (context.Session[CaptchaImage.SESSION_CAPTCHA] == null) context.Session.Add(CaptchaImage.SESSION_CAPTCHA, str);
        else
        {
            context.Session[CaptchaImage.SESSION_CAPTCHA] = str;
        }
        Bitmap bmp = captcha.Result;
        bmp.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}