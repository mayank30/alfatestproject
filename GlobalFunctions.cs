using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Xml;
using System.Text;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.IO;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Configuration;
using System.Drawing;
using System.Drawing.Text;




/// <summary>
/// Summary description for GlobalFunctions
/// </summary>
namespace GlobalFunctions
{

    public class cls_GlobalFunctions
    {
        private byte[] key;
        private byte[] IV = { 0X12, 0X34, 0X56, 0X78, 0X90, 0XAB, 0XCD, 0XEF };

        public string DecryptPass(string stringToDecrypt, string sEncryptionKey)
        {
            byte[] inputByteArray = new byte[stringToDecrypt.Length + 1];
            try
            {
                key = System.Text.Encoding.UTF8.GetBytes(sEncryptionKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                inputByteArray = Convert.FromBase64String(stringToDecrypt);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                System.Text.Encoding encoding = System.Text.Encoding.UTF8;
                return encoding.GetString(ms.ToArray());
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string EncryptPass(string stringToEncrypt, string SEncryptionKey)
        {
            try
            {
                key = System.Text.Encoding.UTF8.GetBytes(SEncryptionKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] inputByteArray = Encoding.UTF8.GetBytes(stringToEncrypt);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                return Convert.ToBase64String(ms.ToArray());
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public string msg(string str, Page p, Type typ)
        {
            string csname1;
            string cstext1 = "";
            csname1 = "PopupScript";
            Type cstype;
            cstype = typ;
            ClientScriptManager cs = p.ClientScript;
            if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                cstext1 = "alert('" + str + "');";
                cs.RegisterStartupScript(cstype, csname1, cstext1, true);

            }
            return cstext1;


        }

        public void sendtheemail(string sender, string mailto, string msgbody, string subject)
        {
            MailMessage mailmessages = new MailMessage();
            SmtpClient sm = new SmtpClient();
            MailAddress emailadd = new MailAddress(sender);
            mailmessages.From = emailadd;
            mailmessages.To.Add(mailto);
            mailmessages.Subject = subject;
            mailmessages.IsBodyHtml = true;
            mailmessages.Priority = MailPriority.High;
            mailmessages.BodyEncoding = System.Text.Encoding.GetEncoding(1256);
            mailmessages.Body = msgbody;
            sm.Host = System.Configuration.ConfigurationManager.AppSettings["smtp"];
            sm.Port =Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["smtpport"]);

            //sm.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;
            sm.Send(mailmessages);

        }


        public void generate_thumbnail_img(string source_path,string dest_path,string prod_id, string thumb_img)
        {
            try
            {
                if (thumb_img != "")
                {
                    Bitmap objBitmap = new Bitmap(250, 189);
                    SolidBrush whiteBrush = new SolidBrush(Color.White);
                    // Create a graphics object to measure the text's width and height.
                    Graphics objGraphic = Graphics.FromImage(objBitmap);
                    //Graphics objGraphic = new Graphics.FromImage(objBitmap);
                    Bitmap objbit = new Bitmap(source_path + thumb_img);
                    objGraphic.FillRectangle(whiteBrush, 0, 0, 250, 189);
                    objGraphic.DrawImage(objbit, new Rectangle(0, 0, 250, 189), 0, 0, objbit.Width, objbit.Height, GraphicsUnit.Pixel);
                    objBitmap.Save(dest_path + prod_id + "_thumb_" + thumb_img);
                    objBitmap.Dispose();
                    objbit.Dispose();
                    objGraphic.Dispose();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void generate_thumbnail_image(string source_path, string dest_path, string prod_id, string thumb_img)
        {
            try
            {
                if (thumb_img != "")
                {
                    Bitmap objBitmap = new Bitmap(110, 108);
                    SolidBrush whiteBrush = new SolidBrush(Color.White);
                    // Create a graphics object to measure the text's width and height.
                    Graphics objGraphic = Graphics.FromImage(objBitmap);
                    //Graphics objGraphic = new Graphics.FromImage(objBitmap);
                    Bitmap objbit = new Bitmap(source_path + thumb_img);
                    objGraphic.FillRectangle(whiteBrush, 0, 0, 110, 108);
                    objGraphic.DrawImage(objbit, new Rectangle(0, 0, 110, 108), 0, 0, objbit.Width, objbit.Height, GraphicsUnit.Pixel);
                    objBitmap.Save(dest_path + prod_id + "_thumb_mini" + thumb_img);
                    objBitmap.Dispose();
                    objbit.Dispose();
                    objGraphic.Dispose();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void generate_product_img(string img_path, string ls_serverpath,string thumb_img)
        {
            try
            {

                if (thumb_img != "")
                {
                    int li_oldwidth, li_oldheight, li_newwidth, li_newheight;
                    li_newwidth = 450;
                    li_newheight = 300;
                    Bitmap objBitmap = new Bitmap(li_newwidth, li_newheight);
                    SolidBrush whiteBrush = new SolidBrush(Color.White);

                    // Create a graphics object to measure the text's width and height.

                    Graphics objGraphic = Graphics.FromImage(objBitmap);
                    //Graphics objGraphic = new Graphics.FromImage(objBitmap);
                    
                    Bitmap objbit = new Bitmap(img_path+thumb_img);

                    li_oldwidth = objbit.Width;
                    li_oldheight = objbit.Height;
                    //if((li_oldwidth/li_oldheight)>(li_newwidth/li_newheight))
                    //{
                    //    float li_ratio=li_newwidth/li_oldwidth;
                    //    li_newheight=Convert.ToInt32(li_oldheight*li_ratio);
                    //}
                    //else
                    //{
                    //    float li_ratio=li_newheight/li_oldheight;
                    //    li_newwidth=Convert.ToInt32(li_oldwidth*li_ratio);
                    //}


                    if (li_oldwidth > 450)
                    {
                        li_newheight = Convert.ToInt32(Convert.ToDouble(li_oldheight * li_newwidth )/ li_oldwidth);
                    }
                    //else
                    //{
                    //    float li_ratio = li_newheight / li_oldheight;
                    //    li_newwidth = Convert.ToInt32(li_oldwidth * li_ratio);
                    //}

                    objGraphic.FillRectangle(whiteBrush, 0, 0, li_newwidth, li_newheight);
                    objGraphic.DrawImage(objbit, new Rectangle(0, 0, li_newwidth, li_newheight), 0, 0, li_oldwidth, li_oldheight, GraphicsUnit.Pixel);
                    objBitmap.Save(ls_serverpath+ thumb_img);

                    objBitmap.Dispose();
                    objbit.Dispose();
                    objGraphic.Dispose();
                }



            }
            catch (Exception ex)
            {
                throw ex;
            }


        }




        
               

    }



}