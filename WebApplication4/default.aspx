<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FrictionLoss._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Friction Loss</title>
</head>
<body style="height: 280px">

    <form id="form1" runat="server">
               
       <div style="margin-left: 520px">
        </div>

        <div style="height: 320px">

        <fieldset>

            <h3>Bad Daddy's Bad Ass Friction Loss Calculator</h3>

            <div>
                <label>Nozzle Size/Type:</label><br />
                <asp:DropDownList ID="nozzleType" runat="server" Width="200px">
                    <asp:ListItem Text="1 3/4 Inch Fog" Value="100"></asp:ListItem>
                    <asp:ListItem Text="1 3/4 Inch Smooth" Value="80"></asp:ListItem>
                    <asp:ListItem Text="2 1/2 Inch Fog" Value="100"></asp:ListItem>                                        
                </asp:DropDownList>               
            </div>

            <br />

            <div>
                <label>Number of 100ft Sticks of 1 3/4 Inch Hose:</label><br />
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

            <br />

            <div>
                <label>Number of 100ft Sticks of 2 1/2 Inch Hose:</label><br />
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

            <br />

            <div>
                <label>Number of 100ft Sticks of 3 Inch Hose:</label><br />
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

            <br />

            <div>
                <label>Number of 100ft Sticks of 5 Inch Hose:</label><br />
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

            <br />

            <div>
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

            <br />

            <div>
                <label>Number of Floors Above Ground</label><br />
                <asp:DropDownList ID="numberFloors" runat="server" Width="200px">
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

            <br />

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Calculate"/>            
            </div>   
                     
            <div>
                <asp:TextBox ID="psiPump" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="PSI" runat="server" Text="PSI at the Pump"></asp:Label>
            </div>

        </fieldset>
   
    </div>

    </form>
    
</body>

</html>
