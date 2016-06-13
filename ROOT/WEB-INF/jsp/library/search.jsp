<%--
  User: donny
  Date: 1/23/16
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .typeahead,.tt-query,.tt-hint {
        padding: 8px 12px;
        font-size: 14px;
        line-height: 20px;
        border: 2px solid #ccc;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        outline: none;
    }

    .typeahead {
        /*background-color: #fff;*/
    }

    .typeahead:focus {
        /*border: 2px solid #0097cf;*/
    }

    .tt-query {
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    }

    .tt-hint {
        color: #999
    }

    .tt-menu {
        /*width: 422px;*/
        margin: 2px 0;
        padding: 8px 0;
        background-color: #fff;
        /*border: 1px solid #ccc;*/
        border: 1px solid rgba(0, 0, 0, 0.2);
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        -webkit-box-shadow: 0 5px 10px rgba(0,0,0,.2);
        -moz-box-shadow: 0 5px 10px rgba(0,0,0,.2);
        box-shadow: 0 5px 10px rgba(0,0,0,.2);
    }

    .tt-suggestion {
        padding: 3px 20px;
        font-size: 14px;
        line-height: 24px;
    }

    .tt-suggestion:hover {
        cursor: pointer;
        color: #fff;
        background-color: #f39d12;
    }

    .tt-suggestion.tt-cursor {
        color: #fff;
        background-color: #f39d12;

    }

    .tt-suggestion p {
        margin: 0;
    }

    .gist {
        font-size: 14px;
    }
    .twitter-typeahead, .tt-hint, .tt-input, .tt-menu { width: 100%; }

    /* example specific styles */
    /* ----------------------- */

    #custom-templates .empty-message {
        padding: 5px 10px;
        text-align: center;
    }

    #multiple-datasets .league-name {
        margin: 0 20px 5px 20px;
        padding: 3px 0;
        border-bottom: 1px solid #ccc;
    }

    #scrollable-dropdown-menu .tt-menu {
        max-height: 150px;
        overflow-y: auto;
    }
    #productSearch{padding-top:25px;padding-bottom:10px;background-color: #f39d12;}
#productSearch .btn-default{background-color:#D35502;border:#d35400;}
#productSearch .btn{margin-bottom:0px;}
#productSearch input{margin-top:2px;height:36px;}</style>
<form name="searchForm" id="searchForm" action="${baseurl}product/searchq" method="get">
    <input type="hidden" name="q" id="q" value="">
</form>
<div id="productSearch">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="input-group">
                    <input id="psearch" name="query" type="text" class="form-control typeahead col-md-8" />
                    <span class="input-group-btn"><button id="searchBtn" class="btn btn-default" type="button"><span class="glyphicon glyphicon-search white" style="font-size: 20px;" aria-hidden="true"></span></button></span>
                </div>
            </div>
            <div class="col-md-6 text-right"><img src="${baseurl}res/images/l4bhs.png" class=""></div>
        </div>
    </div>
</div>

<script type="text/javascript" charset="utf-8">var baseurl = "${baseurl}";</script>