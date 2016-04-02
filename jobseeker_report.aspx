<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="jobseeker_report.aspx.cs" Inherits="jobseeker_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Per Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" onselectedindexchanged="ddlperpage_SelectedIndexChanged" 
         >
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
    </asp:DropDownList></asp:Panel>

    <h1 style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jobseeker Report</h1>
    <p style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">
        &nbsp;</p>

<asp:Panel ID="Panel1" runat="server" Width="750px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jobseeker Name:-&nbsp;<asp:DropDownList ID="DropDownList1" 
        runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtnall" runat="server" AutoPostBack="True" 
        GroupName="comp" Text="All" />
    &nbsp;
    <asp:RadioButton ID="rbtntoday" runat="server" AutoPostBack="True" 
        GroupName="comp" Text="Today" 
      />
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

            AutoGenerateColumns="False" DataKeyNames="jobseeker_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        EnableViewState="False" 
        AllowPaging="True" PageSize="5" 
        onpageindexchanging="grdcomp_PageIndexChanging" 
        onrowdeleting="grdcomp_RowDeleting" onrowupdating="grdcomp_RowUpdating" 
        onselectedindexchanged="grdcomp_SelectedIndexChanged" >
            <Columns>
                
                 
                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label ID="lblfname" runat="server" Text='<%#Eval("first_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                <asp:TemplateField HeaderText="Middle Name">
                    <ItemTemplate>
                        <asp:Label ID="lblmname" runat="server" Text='<%#Eval("middle_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                 
              <%--  <asp:TemplateField HeaderText="Last Name">
                    <ItemTemplate>
                        <asp:Label ID="lbllname" runat="server" Text='<%#Eval("last_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
--%>
                 
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="lbladd" runat="server" Text='<%#Eval("address") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Profile Date">
                    <ItemTemplate>
                        <asp:Label ID="lblprofile" runat="server" Text='<%#Eval("profile_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 
                <%-- <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                --%>
                  <asp:TemplateField HeaderText="Contact No">
                    <ItemTemplate>
                        <asp:Label ID="lblcno" runat="server" Text='<%#Eval("contact_no") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:BoundField DataField="dob" HeaderText="DOB" DataFormatString="{0:M-dd-yyyy}">
                <ItemStyle />
            </asp:BoundField>
           
                   <asp:TemplateField HeaderText="Email Id">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                   <asp:TemplateField HeaderText="Resume">
                    <ItemTemplate>
                        <asp:LinkButton ID="Lbtnresume" runat="server" Text='<%#Eval("path") %>' CommandName="update">'>LinkButton</asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>


                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon_delete.gif" CommandName="delete"/>    
      <%--                  <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="delete" />--%>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="#E7E7FF" Font-Size="Small" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" Font-Size="Small" />
        </asp:GridView>

</asp:Content>

