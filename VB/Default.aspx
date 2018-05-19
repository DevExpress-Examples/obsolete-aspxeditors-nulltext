<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridLookup" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement NullText for ASPxEditors</title>
    <script src="ScriptFile.js"></script>
    <link rel="stylesheet" href="StylePlaceholder.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxLabel runat="server" ClientInstanceName="dxLb">
                <ClientSideEvents Init="OnLb_Init" />
            </dx:ASPxLabel>
            <div>
                <dx:ASPxComboBox ID="dxCombo" ClientInstanceName="clientCombo" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                    DataSourceID="dsProducts" EnableIncrementalFiltering="True" TextField="ProductName" ValueField="ProductID" ValueType="System.Int32">
                    <ClientSideEvents Init="OnCtrl_Init" />
                </dx:ASPxComboBox>
            </div>
            <div>
                <dx:ASPxTextBox ID="dxTextBox" runat="server" Width="170px">
                    <ClientSideEvents Init="OnCtrl_Init" />
                </dx:ASPxTextBox>
            </div>
            <div>
                <dx:ASPxGridLookup ID="dxLookup" runat="server" AutoGenerateColumns="True"
                    DataSourceID="dsProducts" KeyFieldName="ProductID" IncrementalFilteringMode="Contains" TextFormatString="{0} - {1}">
                    <ClientSideEvents Init="OnCtrl_Init" />
                    <GridViewProperties>
                        <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True"></SettingsBehavior>
                    </GridViewProperties>
                </dx:ASPxGridLookup>
            </div>
            <div>
                <input type="button" value="Clear Text" onclick="ASPxClientEdit.ClearEditorsInContainer();" />
                <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                    SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>