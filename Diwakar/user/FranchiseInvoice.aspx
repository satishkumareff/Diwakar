﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeBehind="FranchiseInvoice.aspx.cs" Inherits="Rexima.Franchise12.FranchiseInvoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnPrint").click(function () {
                var contents = $("#dvContents").html();
                var frame1 = $('<iframe />');
                frame1[0].name = "frame1";
                frame1.css({ "position": "absolute", "top": "-1000000px" });
                $("body").append(frame1);
                var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
                frameDoc.document.open();
                //Create a new HTML document.
                frameDoc.document.write('<html><head><title>RETAIL INVOICE</title>');
                frameDoc.document.write('</head><body>');
                //Append the external CSS file.
                frameDoc.document.write('<link href="style.css" rel="stylesheet" type="text/css" />');
                //Append the DIV contents.
                frameDoc.document.write(contents);
                frameDoc.document.write('</body></html>');
                frameDoc.document.close();
                setTimeout(function () {
                    window.frames["frame1"].focus();
                    window.frames["frame1"].print();
                    frame1.remove();
                }, 500);
            });
        });
    </script>
     <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            font-weight: 700;
        }

        .tblinv {
            width: 100%;
            height: 123px;
        }

            .tblinv td {
                border: 1px solid #333;
            }

            .tblinv th {
                border: 1px solid #333;
                background-color: #65ac42;
            }

        .padd td {
            padding: 5px;
        }

        .padd1 td {
            padding: 5px 10px;
        }

        .padd1 th {
            padding: 7px;
            color: #fff;
        }

        table td {
            text-align: center;
            padding: 5px;
        }


        table td {
            border: 1px solid #666;
        }

        .noborder td {
            border: none;
        }
    </style>

    <style type="text/css">
 
 
/* CSS to change the GridLines color */
.Grid, .Grid th, .Grid td
{
    border:1px solid;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div id="main-container">

    <div id="breadcrumb">
        <ul class="breadcrumb">
            <li><i class="fa fa-home"></i><a href="MemberHome.aspx">Home</a></li>
            <li class="active">Order Invoice</li>
        </ul>
    </div>
                <center>
        <table>
            <tr>
                <td> <asp:Label ID="lblinvoiceType" runat="server" Text="Label"></asp:Label> Invoice</td>
            </tr>
        </table>

    </center>

        <br />

        <div class="padding-md grid_padding_top">
            <div class="panel panel-default table-responsive">
                <div class="panel-heading">
                 Order Invoice
                <span id="ctl00_ContentPlaceHolder1_lbltotalrecord" class="label label-info pull-right"></span>
                </div>
                <div class="padding-md clearfix">
     <div id="dvContents">
                        <asp:Panel ID="Panel1" runat="server" Width="100px" Style="width: 100%; margin-left: auto; margin-right: auto;">


                            <style>
                                @media print {
                                    .tbltreASTER td {
                                        border-right: 1px solid #000 !important;
                                        border: none;
                                    }

                                    .tbltreASTER {
                                        border: none;
                                    }

                                    #tblmain td {
                                        border: none;
                                    }

                                    .noborder td {
                                        border: none !important;
                                    }

                                    #tblmain td {
                                        border: 1px solid #333;
                                    }

                                    p {
                                        font-size: 10px;
                                    }

                                    table td {
                                        font-size: 12px;
                                    }

                                    h4 {
                                        color: #000;
                                        font-size: 12px;
                                        font-weight: bold;
                                        padding: 0 0 2px 0;
                                    }

                                    h2 {
                                        float: left;
                                        color: #333333;
                                        font-size: 16px;
                                        padding: 0 10px 0 0;
                                        font-weight: bold;
                                    }
                                }

                                .style1 {
                                    font-size: xx-small;
                                }
                            </style>

                            <table id="tblmain" width="100%" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2" style="text-align: center; border-bottom: none;">

                                        <img src="../assets/images/logo1.png" alt="" width="" height="93px" border="0" style="float: left;">
                                           


                                        <p style="text-align: right;">
                                             <strong style="font-size: 18px;"><%=ConfigurationManager.AppSettings["Companyname"].ToString()%></strong><br />

                                            <a><%=ConfigurationManager.AppSettings["URL"].ToString()%></a><br />
                                            E<a>mail: <%=ConfigurationManager.AppSettings["Email"].ToString()%></a><br />
                                            <a>Helpline No: <%=ConfigurationManager.AppSettings["Mobileno"].ToString()%></a><br />
                                           
                                             <a>Tin Number: <%=ConfigurationManager.AppSettings["TinNumber"].ToString()%></a><br />
                                            <a>CIN Number: <%=ConfigurationManager.AppSettings["CinNumber"].ToString()%></a><br />
                                           
                                            
                                            <p>
                                                  <a>Address :   <%=ConfigurationManager.AppSettings["Address"].ToString()%>  </a>
                                        
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                             <p>
                                             </p>
                                             <p>
                                             </p>
                                             <p>
                                             </p>
                                             <p>
                                             </p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center; border-bottom: none; color: #000;">
                                        <h4>RETAIL INVOICE</h4>
                                    </td>
                                </tr>


                                <tr>
                                    <td style="width: 45%; border-bottom: none; border-right: none; padding: 0px;">
                                        <table cellpadding="0" cellspacing="0" class="noborder" width="100%">
                                            <tr>
                                                <td style="width: 24%; text-align: left; border-right: 0px solid #333!important; padding: 5px;">ID<br />
                                                    Name<br />
                                                    Mobile No<br />
                                                    Address<br />
                                                    City<br />
                                                   <%--  Shipping Address<br />--%>
                                                    <br />



                                                </td>
                                                <td style="width: 85%; text-align: left; padding: 5px;">:&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                     <br />
                                                   <%-- :&nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>--%>
                                                    <br />



                                                    <br />


                                                </td>
                                            </tr>
                                        </table>

                                    </td>
                                    <td style="width: 45%; border-bottom: none; border-right: none; padding: 0px;">

                                        <table cellpadding="0" cellspacing="0" class="noborder" width="100%">
                                            <tr>
                                                <td style="width: 35%; text-align: left; border-right: 0px solid #333!important; padding: 5px;">Invoice No<br />
                                                    Invoice Date<br />
                                                    Franchise Code<br />
                                                    Franchise Name<br />

                                                    Franchise Type
                                                    <br />

                                                    <br />


                                                </td>
                                                <td style="width: 85%; text-align: left; padding: 5px; border-right: 1px solid #333!important;">:&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    :&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                                    <br />

                                                    :&nbsp;<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                                    <br />


                                                    <br />

                                                </td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>


                                <tr>

                                    <td style="width: 55%; border: 0px; border-bottom: 0px; padding: 0px;" colspan="2">
                                        <table cellpadding="0" style="border: 0px" cellspacing="0" width="100%" class="noborder">
                                            <tr>
                                                <td style="padding: 0px; border: 0px; border-bottom: 0px;">

                                                    <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" Width="100%" Style="float: left; margin-top: 0px;" ShowFooter="True"
                                                        ShowHeaderWhenEmpty="True" EmptyDataText="No Payouts released."
                                                        OnRowDataBound="GridView1_RowDataBound" Font-Size="13px">
                                                        <Columns>

                                                            <asp:TemplateField HeaderText="SNo" HeaderStyle-Width="5px">
                                                                <ItemTemplate>
                                                                    <%#((GridViewRow)Container).RowIndex+1 %>
                                                                </ItemTemplate>
                                                                <HeaderStyle Width="5px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code"  />
                                                            <asp:BoundField DataField="Name" HeaderText="Product Name" SortExpression="Name" />

                                                            <asp:BoundField DataField="Price" HeaderText="MRP" SortExpression="Price" DataFormatString="{0:f2}" />
                                                            <asp:BoundField DataField="Unit Price" HeaderText="LP" SortExpression="Unit Price" DataFormatString="{0:f2}" />
                                                            <asp:BoundField DataField="BV" HeaderText="EP" SortExpression="BV" DataFormatString="{0:f2}" />
                                                            <asp:BoundField DataField="PP" HeaderText="PP" SortExpression="PP" DataFormatString="{0:f2}" />
                                                            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" HeaderStyle-Width="10px">


                                                                <HeaderStyle Width="10px" />
                                                            </asp:BoundField>


                                                            <%-- <asp:BoundField DataField="Dis." HeaderText="Dis." SortExpression="Dis." DataFormatString="{0:f2}" HeaderStyle-Width="15px" ItemStyle-Width="15" ControlStyle-Width="15" FooterStyle-width="15" /> --%>
                                                            <%--<asp:BoundField DataField="VAT/CST%" HeaderText="VAT/CST%" SortExpression="VAT/CST%" DataFormatString="{0:f2}" />  --%>
                                                            <%--<asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value" DataFormatString="{0:f2}"/>--%>

                                                            <asp:BoundField DataField="VAT/CST%" HeaderText="VAT Amount" SortExpression="VAT/CST%" DataFormatString="{0:f2}" Visible="false" />
                                                            <%--    <asp:BoundField DataField="VAT/Additional" HeaderText="Add VAT" SortExpression="VAT/Additional" DataFormatString="{0:f2}" Visible="false"/>--%>
                                                            <asp:BoundField DataField="Vat" HeaderText="VAT%" SortExpression="Vat" />

                                                            <asp:BoundField DataField="TotalBV" HeaderText="Total EP" SortExpression="TotalBV" DataFormatString="{0:f2}" />
                                                             <asp:BoundField DataField="totalPP" HeaderText="Total PP" SortExpression="totalPP" />
                                                           
                                                            <asp:BoundField DataField="Total Price" HeaderText="Total LP" SortExpression="Total Price" DataFormatString="{0:f2}" />
                                                            <asp:BoundField DataField="TotalMRP" HeaderText="Total MRP" SortExpression="TotalMRP" DataFormatString="{0:f2}" />
                                                           


                                                        </Columns>
                                                        <EmptyDataTemplate>
                                                            No Rows Found!
                                                        </EmptyDataTemplate>
                                                        <FooterStyle
                                                            HorizontalAlign="Center" />
                                                        <RowStyle
                                                            HorizontalAlign="Center" />

                                                    </asp:GridView>
                                                </td>

                                            </tr>
                                        </table>

                                    </td>

                                </tr>


                                


                                

                                 


                              <%--  <tr>
                                    <td colspan="2" style="text-align: right; border-bottom: none; padding-left: 5px!important; color: #000;border-bottom: 1px solid #666;">Total Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                </tr>--%>


                               
                                   
                                <tr>
                                    <td style="text-align: center;border-bottom: 1px solid #666; line-height: 14px; padding-left: 5px;" class="style1" colspan="2">
                                        “I/We certify that my/our registration certificate under the ... Valve Added Tax Act 2005 is in force on the date on which the sale of the goods specified in this Tax Invoice is made by me/us and that the transaction of sale covered by this tax invoice has been effected by me/us and shall be accounted for in the turnover of sales while filling of return and the due tax, if any payable on the sales has been paid or shall be paid”</td>

                                </tr>

                                <tr>
                                    <td style="width: 50%; text-align: left; border-right: none; line-height: 14px; padding-left: 5px!important; vertical-align: top!important;"><span style="font-size: 10px;">
                                        <strong>Terms & Conditions:</strong>
                                        <br />
                                        *DP Amount Include Vat @5.25.<br />
                                        *Product once sold will not be taken back.<br />
                                        *Our responsibility ceases as soon as the goods        
  Leave our godown.<br />
                                        *Subject to ..Delhi court.<br />
                                        *Amount including TAX.
                                    </span></td>
                                    <td style="width: 55%;">
                                        <h5 style="float: right; color: #000;"><%=ConfigurationManager.AppSettings["Companyname"].ToString()%></h5>
                                        <br />
                                        <br style="clear: both;" />
                                        <%-- <img src="images/sign.jpg" width="100px" style="float:right" />--%>

                                        <br style="clear: both;" />
                                        <h4 style="float: right!important; text-align: right!important; color: #000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signatory</h4>

                                        <br />

                                        <br />

                                        <p style="float: left; font-size: 8px; margin-left: 55px!important;">(This is a computer genrateted invoice no need of original signatures)</p>
                                    </td>

                                </tr>
                            </table>
                            <br />

                        </asp:Panel>
                        <br />
                        <br />
         </div>
    <center>
    <table><tr><td>  <input type="button" id="btnPrint"   value="Print" /></td></tr></table></center>

  </div>
            </div>
            </div>
         </div>
      <asp:HiddenField ID="hhdinvoice" runat="server" />
</asp:Content>
