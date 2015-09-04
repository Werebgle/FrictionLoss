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
                btnSubmit.Click += BtnSubmit_Click;
        }
               
        private void BtnSubmit_Click(object sender, EventArgs e)
        {
            //1st dropdown
            int nozzle, handline, handline1, supply3inch, /*supply5inch,*/ appliances, floors, flhandline, flhandline1, flhandline2, flappliances, flfloors, result;
            nozzle = Convert.ToInt32(nozzleType.SelectedValue.Trim());
            handline = Convert.ToInt32(numberSticks.SelectedValue.Trim());
            handline1 = Convert.ToInt32(numberSticks1.SelectedValue.Trim());
            supply3inch = Convert.ToInt32(numberSticks2.SelectedValue.Trim());
            //supply5inch = Convert.ToInt32(numberSticks3.SelectedValue.Trim());
            appliances = Convert.ToInt32(numberAppliances.SelectedValue.Trim());
            floors = Convert.ToInt32(numberFloors.SelectedValue.Trim());

            //2nd dropdown
            int nozzle2, handline2, handline12, supply3inch2, /*supply5inch2,*/ appliances2, floors2, fl2handline, flhandline12, flhandline22, flappliances2, flfloors2, result2;
            nozzle2 = Convert.ToInt32(nozzle2Type.SelectedValue.Trim());
            handline2 = Convert.ToInt32(number2Sticks.SelectedValue.Trim());
            handline12 = Convert.ToInt32(number2Sticks1.SelectedValue.Trim());
            supply3inch2 = Convert.ToInt32(number2Sticks2.SelectedValue.Trim());
            //supply5inch2 = Convert.ToInt32(number2Sticks3.SelectedValue.Trim());
            appliances2 = Convert.ToInt32(number2Appliances.SelectedValue.Trim());
            floors2 = Convert.ToInt32(number2Floors.SelectedValue.Trim());

            //3rd dropdown
            int nozzle3, handline3, handline13, supply3inch3, /*supply5inch3,*/ appliances3, floors3, fl3handline, flhandline13, flhandline23, flappliances3, flfloors3, result3;
            nozzle3 = Convert.ToInt32(nozzle3Type.SelectedValue.Trim());
            handline3 = Convert.ToInt32(number3Sticks.SelectedValue.Trim());
            handline13 = Convert.ToInt32(number3Sticks1.SelectedValue.Trim());
            supply3inch3 = Convert.ToInt32(number3Sticks2.SelectedValue.Trim());
            //supply5inch3 = Convert.ToInt32(number3Sticks3.SelectedValue.Trim());
            appliances3 = Convert.ToInt32(number3Appliances.SelectedValue.Trim());
            floors3 = Convert.ToInt32(number3Floors.SelectedValue.Trim());

            //1st dropdown
            flhandline = 25;
            flhandline1 = 10;
            flhandline2 = 5;
            flappliances = 10;
            flfloors = 5;

            //2nd dropdown
            fl2handline = 25;
            flhandline12 = 10;
            flhandline22 = 5;
            flappliances2 = 10;
            flfloors2 = 5;

            //3rd dropdown
            fl3handline = 25;
            flhandline13 = 10;
            flhandline23 = 5;
            flappliances3 = 10;
            flfloors3 = 5;

            //1st dropdown
            result = nozzle + /*supply5inch +*/ (handline * flhandline) + (handline1 * flhandline1) + (supply3inch * flhandline2) + (appliances * flappliances) + (floors * flfloors);
            
            //2nd dropdown
            result2 = nozzle2 + /*supply5inch2 +*/ (handline2 * fl2handline) + (handline12 * flhandline12) + (supply3inch2 * flhandline22) + (appliances2 * flappliances2) + (floors2 * flfloors2);

            //3rd dropdown
            result3 = nozzle3 + /*supply5inch3 +*/ (handline3 * fl3handline) + (handline13 * flhandline13) + (supply3inch3 * flhandline23) + (appliances3 * flappliances3) + (floors3 * flfloors3);


            if ((result > result2) && (result > result3))
            {
                psiPump.Text = Convert.ToString(result);
            }
            else if ((result2 > result) && (result2 > result3))
            {
                psiPump.Text = Convert.ToString(result2);
            }
            else
            {
                psiPump.Text = Convert.ToString(result3);
            }

            psiLine1.Text = Convert.ToString(result);
            psiLine2.Text = Convert.ToString(result2);
            psiLine3.Text = Convert.ToString(result3);
        }
      
    }

}