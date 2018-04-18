using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Alfa.DAL;
using Alfa.Models;

namespace Alfa.BAL
{
    public class Services
    {
        Alfa.DAL.Services dal = new DAL.Services();

        public List<MainServices> GetMainServices()
        {
            return dal.GetMainServices();
        }

        public Models.Services GetServiceDetailByServiceId(String id)
        {
            return dal.GetServiceDetailByServiceId(id);
        }
    }
}