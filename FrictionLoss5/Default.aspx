<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FrictionLoss5._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Friction Loss</title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="content/Site.css" rel="stylesheet" type="text/css" />     
</head>
<body>    
    
    <form id="form1" runat="server">

    <nav class="navbar navbar-inverse navbar-fixed-top navbar-xs">
        <div class="container">
        <div class="navbar-header">          
            <a class="navbar-brand" href="Default.aspx">Friction Loss Calculator for Worthington Fire</a>            
        </div>        
        </div>
    </nav>  
          
    <br />
   
    <div class= "container">
        <div class="descriptionColumnMain">
        
            <%-- 1st set of dropdowns --%>
            <div class="row">
                <h5>Line 1</h5>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label>Nozzle Size/Type:</label><br />
                    <asp:DropDownList ID="nozzleType" runat="server" Width="200px">
                        <asp:ListItem Text="Select Nozzle Type" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Fog" Value="100"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Smooth" Value="80"></asp:ListItem>
                        <asp:ListItem Text="Hotel Bndl w/Nozzle" Value="150"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Fog" Value="105"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Smooth" Value="60"></asp:ListItem>                        
                        <asp:ListItem Text="Blitz Fog" Value="125"></asp:ListItem>
                        <asp:ListItem Text="Blitz Smooth" Value="110"></asp:ListItem>                                       
                    </asp:DropDownList>                                  
                </div>        
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label id="Sticks"># of 100ft Sticks of 1 3/4" Hose:</label><br />
                    <asp:DropDownList ID="numberSticks" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 2 1/2" Hose:</label><br />
                    <asp:DropDownList ID="numberSticks1" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 3" Hose:</label><br />
                    <asp:DropDownList ID="numberSticks2" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                   
                </div>
            </div>           

            <div class="row">
                <%--<div class="col-md-3 dropDownBottomPadding">
                    <label># of 100ft Sticks of 5" Hose:</label><br />
                    <asp:DropDownList ID="numberSticks3" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                
                </div>--%>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Number of Appliances:</label><br />
                    <asp:DropDownList ID="numberAppliances" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Elevation</label><br />
                    <asp:DropDownList ID="numberFloors" runat="server" Width="200px">
                        <asp:ListItem Text="Ground Floor" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Second Floor" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Third Floor" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Fourth Floor" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Fifth Floor" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Sixth Floor" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Seventh Floor" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Eighth Floor" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Ninth Floor" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Tenth Floor" Value="9"></asp:ListItem>                        
                    </asp:DropDownList>                             
                </div>
                <div class="col-md-6 psiLinePadding">
                    <asp:TextBox ID="psiLine1" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="psi1" runat="server" Text="PSI Line 1" Font-Bold="True" ForeColor="Red"></asp:Label>                    
                </div>
            </div>
            <%-- end of 1st set --%>

            <br />

            <%-- 2nd set of dropdowns --%>
            <div class="row">
                <h5>Line 2</h5>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label>Nozzle Size/Type:</label><br />
                    <asp:DropDownList ID="nozzle2Type" runat="server" Width="200px">
                        <asp:ListItem Text="Select Nozzle Type" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Fog" Value="100"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Smooth" Value="80"></asp:ListItem>
                        <asp:ListItem Text="Hotel Bndl w/Nozzle" Value="150"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Fog" Value="105"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Smooth" Value="60"></asp:ListItem>                        
                        <asp:ListItem Text="Blitz Fog" Value="125"></asp:ListItem>
                        <asp:ListItem Text="Blitz Smooth" Value="110"></asp:ListItem>                                       
                    </asp:DropDownList>                                  
                </div>        
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label id="2Sticks"># of 100ft Sticks of 1 3/4" Hose:</label><br />
                    <asp:DropDownList ID="number2Sticks" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 2 1/2" Hose:</label><br />
                    <asp:DropDownList ID="number2Sticks1" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 3" Hose:</label><br />
                    <asp:DropDownList ID="number2Sticks2" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                   
                </div>
            </div>            

            <div class="row">
                <%--<div class="col-md-3 dropDownBottomPadding">
                    <label># of 100ft Sticks of 5" Hose:</label><br />
                    <asp:DropDownList ID="number2Sticks3" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                
                </div>--%>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Number of Appliances:</label><br />
                    <asp:DropDownList ID="number2Appliances" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Elevation</label><br />
                    <asp:DropDownList ID="number2Floors" runat="server" Width="200px">
                        <asp:ListItem Text="Ground Floor" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Second Floor" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Third Floor" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Fourth Floor" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Fifth Floor" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Sixth Floor" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Seventh Floor" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Eighth Floor" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Ninth Floor" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Tenth Floor" Value="9"></asp:ListItem>                        
                    </asp:DropDownList>                             
                </div>
                <div class="col-md-6 psiLinePadding">
                    <asp:TextBox ID="psiLine2" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="psi2" runat="server" Text="PSI Line 2" Font-Bold="True" ForeColor="Red"></asp:Label>                    
                </div>
            </div>
            <%-- end of 2nd set --%>

            <br />

            <%-- 3rd set of dropdowns --%>
            <div class="row">
                <h5>Line 3</h5>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label>Nozzle Size/Type:</label><br />
                    <asp:DropDownList ID="nozzle3Type" runat="server" Width="200px">
                        <asp:ListItem Text="Select Nozzle Type" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Fog" Value="100"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Smooth" Value="80"></asp:ListItem>
                        <asp:ListItem Text="Hotel Bndl w/Nozzle" Value="150"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Fog" Value="105"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Smooth" Value="60"></asp:ListItem>                        
                        <asp:ListItem Text="Blitz Fog" Value="125"></asp:ListItem>
                        <asp:ListItem Text="Blitz Smooth" Value="110"></asp:ListItem>                                       
                    </asp:DropDownList>                                  
                </div>        
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label id="3Sticks"># of 100ft Sticks of 1 3/4" Hose:</label><br />
                    <asp:DropDownList ID="number3Sticks" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 2 1/2" Hose:</label><br />
                    <asp:DropDownList ID="number3Sticks1" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPaddingTopRow">
                    <label># of 100ft Sticks of 3" Hose:</label><br />
                    <asp:DropDownList ID="number3Sticks2" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                   
                </div>
            </div>            

            <div class="row">
                <%--<div class="col-md-3 dropDownBottomPadding">
                    <label># of 100ft Sticks of 5" Hose:</label><br />
                    <asp:DropDownList ID="number3Sticks3" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                
                </div>--%>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Number of Appliances:</label><br />
                    <asp:DropDownList ID="number3Appliances" runat="server" Width="200px">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>                                  
                </div>
                <div class="col-md-3 dropDownBottomPadding">
                    <label>Elevation</label><br />
                    <asp:DropDownList ID="number3Floors" runat="server" Width="200px">
                        <asp:ListItem Text="Ground Floor" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Second Floor" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Third Floor" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Fourth Floor" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Fifth Floor" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Sixth Floor" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Seventh Floor" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Eighth Floor" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Ninth Floor" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Tenth Floor" Value="9"></asp:ListItem>                        
                    </asp:DropDownList>                             
                </div>
                <div class="col-md-6 psiLinePadding">
                    <asp:TextBox ID="psiLine3" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="psi3" runat="server" Text="PSI Line 3" Font-Bold="True" ForeColor="Red"></asp:Label>                    
                </div>
            </div>
            <%-- end of 3rd set --%>
                 
            <br />
                
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <asp:TextBox ID="psiPump" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="PSI" runat="server" Text="PSI at the Pump" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <asp:Button class="btnSubmit" ID="btnSubmit" runat="server" Text="Calculate"/>
                </div>                                        
            </div>            
                   
        </div>         
            
        <div class="row">            
            <div class="col-md-5 col-med-offset-1 descriptionColumns">
                <h4>Sprinkler or Standpipe Pressures</h4>
                <ul>
                    <li>5 Inch Stortz 100PSI</li>
                    <li>Single Connection 100PSI</li>
                    <li>Multiple Connections 150 PSI</li>
                    <li>Add 5PSI Per Floor After 1st Floor</li>
                </ul>                
            </div>
            <div class="col-md-6 descriptionColumns1">
                <h4>Miscellaneous Pressures</h4>
                <ul>
                    <li>Relay Pumping 50PSI at Receiving Pumper</li>
                    <li>Positive Water Supply - Maintain 20 PSI Residual</li>
                    <li>Raise or Lower Handline Pressure in 20PSI Increments</li>
                    <li>1857 Waterway 200PSI</li>
                </ul>                
            </div>
        </div>

    </div>     

    </form>

    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery-1.10.2.intellisense.js"></script>

    <%-- 1st set of dropdowns --%>
    <script>
        
        $(function () {

            var nozzleType = ("Select Nozzle Type");
            var handlineFog = ("1 3/4 Inch Fog");
            var handlineSmooth = ("1 3/4 Inch Smooth");
            var hotelBndl = ("Hotel Bndl w/Nozzle")
            var nozzleSelected = $('#nozzleType').find(":selected").text();
            var twoInchFog = ("2 1/2 Inch Fog");
            var twoInchSmooth = ("2 1/2 Inch Smooth");
            var blitzFog = ("Blitz Fog");
            var blitzSmooth = ("Blitz Smooth");

            if (nozzleSelected == twoInchFog) {
                $('#Sticks').css("text-decoration", "line-through");
                $('#numberSticks').prop('disabled', true);
            }
            else if (nozzleSelected == twoInchSmooth) {
                $('#Sticks').css("text-decoration", "line-through");
                $('#numberSticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzFog) {
                $('#Sticks').css("text-decoration", "line-through");
                $('#numberSticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzSmooth) {
                $('#Sticks').css("text-decoration", "line-through");
                $('#numberSticks').prop('disabled', true);
            }
            else if (nozzleSelected == nozzleType) {
                $('#numberSticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineSmooth) {
                $('#numberSticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineFog) {
                $('#numberSticks').prop('disabled', false);
            }
            else if (nozzleSelected == hotelBndl) {
                $('#numberSticks').prop('disabled', false);
            }
            
            $('#nozzleType').change(function () {
                var val = $(this).find(":selected").text();

                if (val != handlineSmooth) {
                    $('#numberSticks').prop('disabled', true);
                    $('#Sticks').css("text-decoration", "line-through");
                }
                else if (val != handlineFog) {
                    $('#numberSticks').prop('disabled', true);
                    $('#Sticks').css("text-decoration", "line-through");
                }
                else if (val != hotelBndl) {
                    $('#numberSticks').prop('disabled', true);
                    $('#Sticks').css("text-decoration", "line-through");
                }
                else if (val != nozzleType) {
                    $('#numberSticks').prop('disabled', true);
                    $('#Sticks').css("text-decoration", "line-through");
                }
            });

            $('#nozzleType').change(function () {
                var val = $(this).find(":selected").text();

                if (val == handlineSmooth) {
                    $('#numberSticks').prop('disabled', false);
                    $('#Sticks').css("text-decoration", "none");
                }
                else if (val == handlineFog) {
                    $('#numberSticks').prop('disabled', false);
                    $('#Sticks').css("text-decoration", "none");
                }
                else if (val == hotelBndl) {
                    $('#numberSticks').prop('disabled', false);
                    $('#Sticks').css("text-decoration", "none");
                }
                else if (val == nozzleType) {
                    $('#numberSticks').prop('disabled', false);
                    $('#Sticks').css("text-decoration", "none");
                }
            });
            
        });

    </script>

    <%-- 2nd set of dropdowns --%>
    <script>
        
        $(function () {

            var nozzleType = ("Select Nozzle Type");
            var handlineFog = ("1 3/4 Inch Fog");
            var handlineSmooth = ("1 3/4 Inch Smooth");
            var hotelBndl = ("Hotel Bndl w/Nozzle")
            var nozzleSelected = $('#nozzle2Type').find(":selected").text();
            var twoInchFog = ("2 1/2 Inch Fog");
            var twoInchSmooth = ("2 1/2 Inch Smooth");
            var blitzFog = ("Blitz Fog");
            var blitzSmooth = ("Blitz Smooth");

            if (nozzleSelected == twoInchFog) {
                $('#2Sticks').css("text-decoration", "line-through");
                $('#number2Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == twoInchSmooth) {
                $('#2Sticks').css("text-decoration", "line-through");
                $('#number2Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzFog) {
                $('#2Sticks').css("text-decoration", "line-through");
                $('#number2Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzSmooth) {
                $('#2Sticks').css("text-decoration", "line-through");
                $('#number2Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == nozzleType) {
                $('#number2Sticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineSmooth) {
                $('#number2Sticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineFog) {
                $('#number2Sticks').prop('disabled', false);
            }
            else if (nozzleSelected == hotelBndl) {
                $('#number2Sticks').prop('disabled', false);
            }
            
            $('#nozzle2Type').change(function () {
                var val = $(this).find(":selected").text();

                if (val != handlineSmooth) {
                    $('#number2Sticks').prop('disabled', true);
                    $('#2Sticks').css("text-decoration", "line-through");
                }
                else if (val != handlineFog) {
                    $('#number2Sticks').prop('disabled', true);
                    $('#2Sticks').css("text-decoration", "line-through");
                }
                else if (val != hotelBndl) {
                    $('#number2Sticks').prop('disabled', true);
                    $('#2Sticks').css("text-decoration", "line-through");
                }
                else if (val != nozzleType) {
                    $('#number2Sticks').prop('disabled', true);
                    $('#2Sticks').css("text-decoration", "line-through");
                }
            });

            $('#nozzle2Type').change(function () {
                var val = $(this).find(":selected").text();

                if (val == handlineSmooth) {
                    $('#number2Sticks').prop('disabled', false);
                    $('#2Sticks').css("text-decoration", "none");
                }
                else if (val == handlineFog) {
                    $('#number2Sticks').prop('disabled', false);
                    $('#2Sticks').css("text-decoration", "none");
                }
                else if (val == hotelBndl) {
                    $('#number2Sticks').prop('disabled', false);
                    $('#2Sticks').css("text-decoration", "none");
                }
                else if (val == nozzleType) {
                    $('#number2Sticks').prop('disabled', false);
                    $('#2Sticks').css("text-decoration", "none");
                }
            });
            
        });

    </script>

    <%-- 3rd set of dropdowns --%>
    <script>
        
        $(function () {

            var nozzleType = ("Select Nozzle Type");
            var handlineFog = ("1 3/4 Inch Fog");
            var handlineSmooth = ("1 3/4 Inch Smooth");
            var hotelBndl = ("Hotel Bndl w/Nozzle")
            var nozzleSelected = $('#nozzle3Type').find(":selected").text();
            var twoInchFog = ("2 1/2 Inch Fog");
            var twoInchSmooth = ("2 1/2 Inch Smooth");
            var blitzFog = ("Blitz Fog");
            var blitzSmooth = ("Blitz Smooth");

            if (nozzleSelected == twoInchFog) {
                $('#3Sticks').css("text-decoration", "line-through");
                $('#number3Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == twoInchSmooth) {
                $('#3Sticks').css("text-decoration", "line-through");
                $('#number3Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzFog) {
                $('#3Sticks').css("text-decoration", "line-through");
                $('#number3Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == blitzSmooth) {
                $('#3Sticks').css("text-decoration", "line-through");
                $('#number3Sticks').prop('disabled', true);
            }
            else if (nozzleSelected == nozzleType) {
                $('#3numberSticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineSmooth) {
                $('#number3Sticks').prop('disabled', false);
            }
            else if (nozzleSelected == handlineFog) {
                $('#number3Sticks').prop('disabled', false);
            }
            else if (nozzleSelected == hotelBndl) {
                $('#number3Sticks').prop('disabled', false);
            }
            
            $('#nozzle3Type').change(function () {
                var val = $(this).find(":selected").text();

                if (val != handlineSmooth) {
                    $('#number3Sticks').prop('disabled', true);
                    $('#3Sticks').css("text-decoration", "line-through");
                }
                else if (val != handlineFog) {
                    $('#number3Sticks').prop('disabled', true);
                    $('#3Sticks').css("text-decoration", "line-through");
                }
                else if (val != hotelBndl) {
                    $('#number3Sticks').prop('disabled', true);
                    $('#3Sticks').css("text-decoration", "line-through");
                }
                else if (val != nozzleType) {
                    $('#number3Sticks').prop('disabled', true);
                    $('#3Sticks').css("text-decoration", "line-through");
                }
            });

            $('#nozzle3Type').change(function () {
                var val = $(this).find(":selected").text();

                if (val == handlineSmooth) {
                    $('#number3Sticks').prop('disabled', false);
                    $('#3Sticks').css("text-decoration", "none");
                }
                else if (val == handlineFog) {
                    $('#number3Sticks').prop('disabled', false);
                    $('#3Sticks').css("text-decoration", "none");
                }
                else if (val == hotelBndl) {
                    $('#number3Sticks').prop('disabled', false);
                    $('#3Sticks').css("text-decoration", "none");
                }
                else if (val == nozzleType) {
                    $('#number3Sticks').prop('disabled', false);
                    $('#3Sticks').css("text-decoration", "none");
                }
            });
            
        });

    </script>
    
</body>

</html>
