<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_experience_detail.aspx.cs" Inherits="view_experience_detail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br /><br />
     <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;
          border-color:Black;" border="5px" 
                      align="center">
      <tr>
          <td class="style2" colspan="2">
              <asp:Label ID="Label1" runat="server"></asp:Label>
          </td>
          
      </tr>
       <tr>
          <td class="style2" colspan="2">
             <div class="article"><h1 style="color:White;">Experience Information:</h1></div></td>
          
      </tr> 
  
      <tr>
          <td class="style12">
              </td>
          <td class="style13" style="color: #000000; font-weight: bold">
              Company name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Month:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              job Post&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Leave Resion:</td>
      </tr>
      
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Current employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblyear" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblmonth" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblreasion" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Previos employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname1" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblyear1" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblmonth1" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob1" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblreasion1" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Past employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname2" runat="server" Width="120px"></asp:Label>
              &nbsp; &nbsp;&nbsp;<asp:Label ID="lblyear2" runat="server" 
                  Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblmonth2" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob2" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblreasion2" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
                      </table>
</asp:Content>

