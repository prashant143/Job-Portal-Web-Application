<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="company_report.aspx.cs" Inherits="company_report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager> 
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Per 
        Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" 
            onselectedindexchanged="ddlperpage_SelectedIndexChanged" >
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
    </asp:DropDownList></asp:Panel>

    <h1 style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Report</h1>
    <p style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">
        &nbsp;</p>

<asp:Panel ID="Panel1" runat="server" Width="750px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Company Name:-&nbsp;&nbsp;<asp:DropDownList ID="ddlcompany" 
        runat="server" AutoPostBack="True" 
        onselectedindexchanged="ddlcompany_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtnall" runat="server" AutoPostBack="True" 
        GroupName="comp" oncheckedchanged="rbtnall_CheckedChanged" Text="All" />
&nbsp;
    <asp:RadioButton ID="rbtntoday" runat="server" AutoPostBack="True" 
        GroupName="comp" Text="Today" />
    &nbsp;&nbsp;
    <asp:RadioButton ID="rbtncurrentmonth" runat="server" AutoPostBack="True" 
        GroupName="comp" Text="Current Month" 
      />
</asp:Panel>
   <asp:GridView ID="grdcomp" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#333333" 
        style="margin-bottom: 25px;" BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="company_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        EnableViewState="False" 
        AllowPaging="True" PageSize="5" 
        onpageindexchanging="grdcomp_PageIndexChanging" 
        onrowdeleting="grdcomp_RowDeleting"  >
            <Columns>
                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcname" runat="server" Text='<%#Eval("company_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

               <%--  
                 <asp:TemplateField HeaderText="Profile Date">
                    <ItemTemplate>
                        <asp:Label ID="lblprofile" runat="server" Text='<%#Eval("profile_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

               --%>  
               <%-- <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label ID="lblcity" runat="server" Text='<%#Eval("city_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>--%>

                
                  <asp:TemplateField HeaderText="Contact Person">
                    <ItemTemplate>
                        <asp:Label ID="lblcper" runat="server" Text='<%#Eval("contect_person") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Company Contact">
                    <ItemTemplate>
                        <asp:Label ID="lblcompcon" runat="server" Text='<%#Eval("company_contect") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Company Address">
                    <ItemTemplate>
                        <asp:Label ID="lblcadd" runat="server" Text='<%#Eval("company_address") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Company Email">
                    <ItemTemplate>
                        <asp:Label ID="lblcemail" runat="server" Text='<%#Eval("company_email") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Website">
                    <ItemTemplate>
                        <asp:Label ID="lblsite" runat="server" Text='<%#Eval("website") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Company category">
                    <ItemTemplate>
                        <asp:Label ID="lblctype" runat="server" Text='<%#Eval("category_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon_delete.gif" CommandName="delete"/>
                      <%--  <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="delete" />--%>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="#E7E7FF" Font-Size="Small" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" Font-Size="Small" />
        </asp:GridView>

</asp:Content>

