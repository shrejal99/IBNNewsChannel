<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Developers.aspx.cs" Inherits="Developers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
        margin:0px;
        padding:0px;
        }
       
      

        .col {
        min-height:250px;
        width:25%;
        background-color:gray;
   
        border:10px solid white;
        float:left;
        margin-top:20px;
        margin-left:25px;
        box-shadow:5px 5px 5px black;
        }
        .title {
        min-height:50px;
        width:100%;
        background-color:gray;
        color:white;
        font-weight:bold;
        font-family:'Times New Roman';
        font-size:18px;
   
        }
        .img {
        height:200px;
        width:100%;
        padding:2%;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
     <div id="outer">
    
    <div id="col-sm-12">
         <div id="Developer" style="font-size:35px; color:red; font-weight:bold; text-align:center;">DEVELOPERS <span class="fa fa-users" ></span></div>
        <div class="row">
            <div class="col-sm-4">
                <div class="col-sm-12 img">
                   <img src="images/" height="200px" width="90%" /><br />
                </div>
                
                <div class="title">
                   <span style="color:black;"> NAME:</span><br />
                    <span style="color:black;">COLLEGE:</span>LUCKNOW
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-sm-12 img">
                     <img src="images/" height="200px" width="80%" /><br />
                </div>
                <div class="title">
                    <span style="color:black;">Name:</span><br />
                    <span style="color:black;">College Name:</span>LUCKNOW
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-sm-12 img">
                   <img src="images/" height="200px" width="80%" /><br />
                </div>
                <div class="title">
                    <span style="color:black;">Name:</span><br />
                    <span style="color:black;">College Name:</span>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top:3%;">
            <div class="col-sm-4">
                <div class="col-sm-12 img">
                   <img src="images/"  height="200px" width="80%" /><br />
                </div>
                <div class="title">
                     <span style="color:black;">Name:</span><br />
                    <span style="color:black;">College Name:</span>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-sm-12 img">
                  <img src="ima"  height="200px" width="80%" /><br />
                </div>
                <div class="title">
                    <span style="color:black;">Name:</span> <br />
                    <span style="color:black;">College Name:</span> </div>
            </div>
            </div>

        </div>
   
    </div>
   
</asp:Content>

