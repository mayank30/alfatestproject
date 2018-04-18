using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Alfa.Models
{

    public class MainServices
    {
        public int id { get; set; }
        public string services_name { get; set; }
        public int status { get; set; }
    }


    public class Services
    {
        public int id { get; set; }
        public int services_id { get; set; }
        public string img_url { get; set; }
        public string services_description { get; set; }
        public int status { get; set; }
    }
}