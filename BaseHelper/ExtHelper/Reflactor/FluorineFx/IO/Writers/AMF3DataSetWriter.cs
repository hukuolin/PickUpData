﻿namespace FluorineFx.IO.Writers
{
    using FluorineFx;
    using FluorineFx.IO;
    using System;
    using System.Data;

    internal class AMF3DataSetWriter : IAMFWriter
    {
        public void WriteData(AMFWriter writer, object data)
        {
            ASObject obj2 = TypeHelper.ConvertDataSetToASO(data as DataSet, false);
            writer.WriteByte(10);
            writer.WriteAMF3Object(obj2);
        }

        public bool IsPrimitive
        {
            get
            {
                return false;
            }
        }
    }
}
