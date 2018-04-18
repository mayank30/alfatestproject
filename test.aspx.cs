using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alfa
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String response = POST("http://betatest.kncc.com/webservice/api/Avenues/GetNowShowing_Avenues", "");
            Response.Write(response);
        }

        /// <summary>
        /// Example  " new NameValueCollection() {{ "home", "Cosby" },{ "favorite+flavor", "flies" }} "
        /// </summary>
        /// <param name="uri"></param>
        /// <param name="jsonCollection"></param>
        /// <returns></returns>
        private String POST(String url, String jsonString)
        {
            StreamReader reader = null;
            Stream dataStream = null;
            WebResponse response = null;
            try
            {
                // Create a request using a URL that can receive a post. 
                HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
                // Set the Method property of the request to POST.
                request.Method = "POST";
                // Create POST data and convert it to a byte array.
                string postData = jsonString;
                byte[] byteArray = Encoding.UTF8.GetBytes(postData);
                // Set the ContentType property of the WebRequest.
                request.ContentType = "application/json";
                // Set the ContentLength property of the WebRequest.
                request.ContentLength = byteArray.Length;
                // Get the request stream.
                dataStream = request.GetRequestStream();
                // Write the data to the request stream.
                dataStream.Write(byteArray, 0, byteArray.Length);
                // Close the Stream object.
                dataStream.Close();
                // Get the response.
                response = request.GetResponse();
                // Display the status.
                Console.WriteLine(((HttpWebResponse)response).StatusDescription);
                // Get the stream containing content returned by the server.
                dataStream = response.GetResponseStream();
                // Open the stream using a StreamReader for easy access.
                reader = new StreamReader(dataStream);
                // Read the content.
                return reader.ReadToEnd();
                // Display the content.
            }
            catch
            {
                return "";
            }
            finally
            {
                // Clean up the streams.
                reader.Close();
                dataStream.Close();
                response.Close();
            }
        }
    }

}