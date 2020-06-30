<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .vg {
         
           background:#1c2331;
           padding-top:3.5%;
           padding-bottom:3.5%;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="col-sm-12" >
       <div class="text-center h2"><b style="color:#eb1f26">VIDEO GALLERY <span class="fa fa-video-camera" ></span></b></div>
        <div class="row">
        <div class="col-sm-12">
            <div class="row">
            <div class="col-sm-4 ">
                <div class="col-sm-12 vg" >
                    <video width="100%" controls >
                        <source src="Videos/india.mp4" >
                    </video>
                </div>
            </div>
           <div class="col-sm-4 ">
                <div class="col-sm-12 vg">
                    <video width="100%" controls >
                        <source  src="Videos/dna.mp4"/>
                    </video>
                </div>
            </div>
                <div class="col-sm-4 ">
                <div class="col-sm-12 vg">
                    <video width="100%" controls >
                        <source  src="Videos/Education.mp4"/>
                    </video>
                </div>
            </div>
                </div>
      
          
            <div class="row" style="margin-top:3%;margin-bottom:4%;">
            <div class="col-sm-4 ">
                <div class="col-sm-12 vg">
                    <video width="100%" controls >
                        <source  src="Videos/dna2.mp4"/>
                    </video>
                </div>
            </div>
           <div class="col-sm-4 ">
                <div class="col-sm-12 vg">
                    <video width="100%" controls >
                        <source  src="Videos/Headspace.mp4"/>
                    </video>
                </div>
            </div>
                <div class="col-sm-4 ">
                <div class="col-sm-12 vg">
                    <video width="100%" controls >
                        <source  src="Videos/dna2.mp4"/>
                    </video>
                </div>
            </div>
                </div>
       
            </div>
    </div>
    </div>
</asp:Content>

