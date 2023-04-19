using System;
using System.Collections.Generic;
using System.Text;

namespace Wplaty_v2.Data.Excel
{
    public class ExcelStructure
    {
        public List<string> Headers { get; set; } = new List<string>();
        public List<List<string>> Values { get; set; } = new List<List<string>>();
    }
}
