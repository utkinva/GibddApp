using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GibddApp.Entities;
using System.Windows.Controls;

namespace GibddApp.Utilities
{
    internal class Transition
    {
        public static Frame mainFrame { get; set; }
        private static GibddEntities _context { get; set; }
        public static GibddEntities Context
        {
            get
            {
                if( _context == null )
                    _context = new GibddEntities();
                return _context;
            }
        }
    }
}
