using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrictionLoss5
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSubmit.Click += BtnSubmit_Click; ;
        }

        private void BtnSubmit_Click(object sender, EventArgs e)
        {
            //throw new NotImplementedException();
            int nozzle, handline, handline1, supply3inch, supply5inch, appliances, floors, flhandline, flhandline1, flhandline2, flappliances, flfloors, result;
            nozzle = Convert.ToInt32(nozzleType.SelectedValue.Trim());
            handline = Convert.ToInt32(numberSticks.SelectedValue.Trim());
            handline1 = Convert.ToInt32(numberSticks1.SelectedValue.Trim());
            supply3inch = Convert.ToInt32(numberSticks2.SelectedValue.Trim());
            supply5inch = Convert.ToInt32(numberSticks3.SelectedValue.Trim());
            appliances = Convert.ToInt32(numberAppliances.SelectedValue.Trim());
            floors = Convert.ToInt32(numberFloors.SelectedValue.Trim());

            flhandline = 25;
            flhandline1 = 10;
            flhandline2 = 5;
            flappliances = 10;
            flfloors = 5;
            result = nozzle + supply5inch + (handline * flhandline) + (handline1 * flhandline1) + (supply3inch * flhandline2) + (appliances * flappliances) + (floors * flfloors);
            psiPump.Text = Convert.ToString(result);
        }
    }
}