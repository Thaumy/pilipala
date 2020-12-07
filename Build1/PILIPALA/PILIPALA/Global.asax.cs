using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

using System.Web.Configuration;

using WaterLibrary.stru.MySQL;
using WaterLibrary.stru.pilipala.DB;
using WaterLibrary.com.CommentLake;
using WaterLibrary.com.MySQL;
using WaterLibrary.com.pilipala;
using WaterLibrary.com.pilipala.Components;

namespace PILIPALA
{
    public class Global : System.Web.HttpApplication
    {
        public static new WaterLibrary.stru.pilipala.User User;
        /* �����ں� */
        public static CORE CORE;
        /* ��ʼ����� */
        public static Reader Reader = new Reader();
        public static Writer Writer = new Writer();
        public static Counter Counter = new Counter();
        public static CommentLake CommentLake = new CommentLake();

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            /* ��ʼ������ž�����ݿ���Ϣ��MySql������ */
            PLDB PLDB = new PLDB
            {
                MySqlManager = new MySqlManager(new MySqlConnMsg
                {
                    DataSource = WebConfigurationManager.AppSettings["DataSource"],
                    DataBase = WebConfigurationManager.AppSettings["DataBase"],
                    Port = WebConfigurationManager.AppSettings["Port"],
                    User = WebConfigurationManager.AppSettings["User"],
                    PWD = WebConfigurationManager.AppSettings["PWD"]
                })
            };

            /* ��ʼ���ں� */
            string UserName = WebConfigurationManager.AppSettings["UserName"];
            string UserPWD = WebConfigurationManager.AppSettings["UserPWD"];

            CORE CORE = new CORE(PLDB, UserName, UserPWD);
            CORE.SetTables();
            CORE.SetViews();

            /* �����ں�׼����ɺ���ҪΪ�䰲װ��Щ��� */
            CORE.LinkOn += Reader.Ready;
            CORE.LinkOn += Writer.Ready;
            CORE.LinkOn += Counter.Ready;
            CORE.LinkOn += CommentLake.Ready;

            /* �����ں� */
            User = CORE.Run();
        }
    }
}
