using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrictionLoss
{

    public partial class _default : System.Web.UI.Page
    {
       
        protected void page_load(object sender, EventArgs e)
        {
            btnSubmit.Click += BtnSubmit_Click;
           // btnSubmit1.Click += BtnSubmit1_Click;
           // btnSubmit2.Click += BtnSubmit2_Click;
        }

        //private void BtnSubmit2_Click(object sender, EventArgs e)
        //{
        //    //throw new NotImplementedException();
        //    int handline, appliances, floors, flhandline, flappliances, flfloors, result;
        //    handline = Convert.ToInt32(numberSticks2.SelectedValue.Trim());
        //    appliances = Convert.ToInt32(numberAppliances2.SelectedValue.Trim());
        //    floors = Convert.ToInt32(numberFloors2.SelectedValue.Trim());

        //    flhandline = 5;
        //    flappliances = 10;
        //    flfloors = 5;
        //    result = (handline * flhandline) + (appliances * flappliances) + (floors * flfloors) + 100;
        //    psiPump2.Text = Convert.ToString(result);
        //}

        //private void BtnSubmit1_Click(object sender, EventArgs e)
        //{
        //    //throw new NotImplementedException();
        //    int handline, appliances, floors, flhandline, flappliances, flfloors, result;
        //    handline = Convert.ToInt32(numberSticks1.SelectedValue.Trim());
        //    appliances = Convert.ToInt32(numberAppliances1.SelectedValue.Trim());
        //    floors = Convert.ToInt32(numberFloors1.SelectedValue.Trim());

        //    flhandline = 10;
        //    flappliances = 10;
        //    flfloors = 5;
        //    result = (handline * flhandline) + (appliances * flappliances) + (floors * flfloors) + 100;
        //    psiPump1.Text = Convert.ToString(result);
        //}

        private void BtnSubmit_Click(object sender, EventArgs e)
        {
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

