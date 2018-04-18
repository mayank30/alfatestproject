using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Alfa.Models;
using System.Configuration;
using DBConnection;
using System.Data.SqlClient;
using System.Data;

namespace Alfa.DAL
{
    public class Services
    {
        public List<MainServices> GetMainServices()
        {
            SqlConnection con = new SqlConnection();
            try
            {
                cls_DBConnection obj_DbConnection = new cls_DBConnection();
                con = obj_DbConnection.getSqlConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_get_service_names";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<MainServices> list = dt.DataTableToList<MainServices>();
                return list;

            }
            catch
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return null;
            }
            finally {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        public Models.Services GetServiceDetailByServiceId(String id)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                cls_DBConnection obj_DbConnection = new cls_DBConnection();
                con = obj_DbConnection.getSqlConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_get_services_details_by_service_id";
                cmd.Connection = con;
                SqlParameter p_id = new SqlParameter("@id", id);
                cmd.Parameters.Add(p_id);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.DataTableToList<Models.Services>()[0];

            }
            catch
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return null;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}