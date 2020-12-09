using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using PILIPALA.Models;
using WaterLibrary.stru.MySQL;
using WaterLibrary.stru.pilipala.DB;
using WaterLibrary.com.CommentLake;
using WaterLibrary.com.MySQL;
using WaterLibrary.com.pilipala;
using WaterLibrary.com.pilipala.Components;

namespace PILIPALA
{
    public class Program
    {
        public static WaterLibrary.stru.pilipala.User User;
        /* �����ں� */
        public static CORE CORE;
        /* ��ʼ����� */
        public static Reader Reader = new Reader();
        public static Writer Writer = new Writer();
        public static Counter Counter = new Counter();
        public static CommentLake CommentLake = new CommentLake();

        public static void Main(string[] args)
        {
            /* ��ʼ������ž�����ݿ���Ϣ��MySql������ */
            PLDB PLDB = new PLDB
            {
                MySqlManager = new MySqlManager(new MySqlConnMsg
                {
                    DataSource = "localhost",
                    DataBase = "pilipala",
                    Port = "3306",
                    User = "root",
                    PWD = "65a1561425f744e2b541303f628963f8"
                })
            };

            /* ��ʼ���ں� */
            string UserName = "Thaumy";
            string UserPWD = "1238412384";

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


            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}
