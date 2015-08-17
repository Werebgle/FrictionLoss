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

    <div class= "container">        

        <div class="jumbotron">
            <h2>Friction Loss Calculator</h2>
        </div>

        <br />
        <br />

            <div class="row">

                <div class="col-md-3">
                    <label style="color:red">Nozzle Size/Type:</label><br />
                    <asp:DropDownList ID="nozzleType" runat="server" Width="200px">
                        <asp:ListItem Text="Select Nozzle Type" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Fog" Value="100"></asp:ListItem>
                        <asp:ListItem Text="1 3/4 Inch Smooth" Value="80"></asp:ListItem>
                        <asp:ListItem Text="2 1/2 Inch Fog" Value="100"></asp:ListItem>                                        
                    </asp:DropDownList>               
                </div>        
                <div class="col-md-3">
                    <label># of 100ft Sticks of 1 3/4" Hose:</label><br />
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
                <div class="col-md-3">
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
                <div class="col-md-3">
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

           <br />
           <br />

           <div class="row"> 

                <div class="col-md-3">
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
                </div>
                <div class="col-md-3">
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
                <div class="col-md-3">
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
                <div class="col-md-3">
                </div>
           </div>

                <br />
                <br />
                
                <div >
                    <asp:TextBox ID="psiPump" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="PSI" runat="server" Text="PSI at the Pump" Font-Bold="True" ForeColor="Red"></asp:Label>                    
                    
                </div>
        <br />
              <div>

                  <asp:Button ID="btnSubmit" runat="server" Text="Calculate"/>
              </div>

          </div>     

    </form>
    
</body>

</html>
