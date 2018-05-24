﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.CommonData;
using Domain.GlobalModel;
namespace HRApp.Model
{
    [TableField(TableName = "EventLog")]
    public class LogData:GuidTimeField
    {
        public short Category { get; set; }
        public string Note { get; set; }
        public string Title { get; set; }
        public bool IsError { get; set; }
        public int DayInt { get; set; }
        /// <summary>
        /// 表数据入库记录内容
        /// </summary>
        /// <returns></returns>
        public static string InsertDbNoteFormat() 
        {
            return "into db the  table 【{0}】";
        }
    }
}