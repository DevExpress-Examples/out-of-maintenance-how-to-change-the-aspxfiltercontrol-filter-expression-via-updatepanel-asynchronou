<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>How to change the ASPxFilterControl filter expression via UpdatePanel asynchronous postback</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
        <Triggers>           
             <asp:AsyncPostBackTrigger controlid="ASPxComboBox1" eventname="SelectedIndexChanged" />
        </Triggers>
            <ContentTemplate>                           
                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" OnSelectedIndexChanged="ASPxComboBox1_SelectedIndexChanged" AutoPostBack="True" SelectedIndex="0">
                    <Items>
                        <dx:ListEditItem Text="Quantity > 100" Value="0" Selected="True" />
                        <dx:ListEditItem Text="Quantity <= 100" Value="1" />
                    </Items>
                </dx:ASPxComboBox>
                <dx:ASPxFilterControl ID="ASPxFilterControl1" runat="server">
                     <Columns>
                        <dx:FilterControlColumn PropertyName="ProductName" />
                        <dx:FilterControlComboBoxColumn PropertyName="CategoryName">
                            <PropertiesComboBox DataSourceID="dsCategories" TextField="CategoryName" ValueField="CategoryName"
                                ValueType="System.String" />
                        </dx:FilterControlComboBoxColumn>
                        <dx:FilterControlComboBoxColumn PropertyName="Country">
                            <PropertiesComboBox DataSourceID="dsCountries" TextField="Country" ValueField="Country"
                                ValueType="System.String" />
                        </dx:FilterControlComboBoxColumn>
                        <dx:FilterControlColumn PropertyName="OrderDate" ColumnType="DateTime" />
                        <dx:FilterControlSpinEditColumn PropertyName="UnitPrice" />
                        <dx:FilterControlSpinEditColumn PropertyName="Quantity" ColumnType="Integer" />
                    </Columns>
                </dx:ASPxFilterControl>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
</body>
</html>
