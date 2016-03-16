<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <%@include file="/common/meta.jsp" %>
  <%@include file="/common/css_load.jsp" %>
  <style>
    .table input[type=checkbox] {
      opacity: 1;
       position: static;
    }
    .bootstrap-table .table {
      border-bottom: 0; !important;
    }
  </style>
  <script src="${ctx}/assets/js/skins.min.js"></script>
</head>
<body>
<%@include file="/common/loading_container.jsp" %>
<%@include file="/common/nav.jsp" %>
<!-- Main Container -->
<div class="main-container container-fluid">
  <!-- Page Container -->
  <div class="page-container">
    <%@include file="/common/page_sidebar.jsp" %>
    <!-- Page Content -->
    <div class="page-content">
      <!-- Page Breadcrumb -->
      <div class="page-breadcrumbs">
        <ul class="breadcrumb">
          <li>
            <i class="fa fa-home"></i>
            <a href="#">Home</a>
          </li>
          <li class="active">Dashboard</li>
        </ul>
      </div>
      <!-- /Page Breadcrumb -->
      <!-- Page Header -->
      <div class="page-header position-relative">
        <div class="header-title">
          <h1>
            用户管理
          </h1>
        </div>
        <!--Header Buttons-->
        <div class="header-buttons">
          <a class="sidebar-toggler" href="#">
            <i class="fa fa-arrows-h"></i>
          </a>
          <a class="refresh" id="refresh-toggler" href="">
            <i class="glyphicon glyphicon-refresh"></i>
          </a>
          <a class="fullscreen" id="fullscreen-toggler" href="#">
            <i class="glyphicon glyphicon-fullscreen"></i>
          </a>
        </div>
        <!--Header Buttons End-->
      </div>
      <!-- /Page Header -->
      <!-- Page Body -->
      <div class="page-body">
        <div class="row">
          <div class="col-md-12">
            <h5 class="row-title before-blue"><i class="typcn typcn-th-menu blue"></i>用户列表</h5>
            <div class="row">
              <div class="col-md-12">
                <div id="toolbar">
                  <button id="add" class="btn btn-default">
                    <i class="glyphicon glyphicon-plus"></i> 新增
                  </button>
                </div>
                <table id="user-table" data-toolbar="#toolbar"></table>
              </div>
            </div>
          </div>

        </div>

      </div>
      <!-- /Page Body -->
    </div>
    <!-- /Page Content -->
  </div>
  <!-- /Page Container -->
  <!-- Main Container -->

</div>
<%@include file="/common/js_load.jsp" %>
<script>
  $("#user-table").bootstrapTable({
    search: true,
    showFooter: false,
    columns: [{
      field: 'userName',
      title: '用户名'
    }, {
      title: '操作',
      width: 100,
      align: 'center',
      events: operateEvents,
      formatter: operateFormatter
    }],
    data: [{
      userName: 'kanglg'
    }, {
      userName: '康立功'
    }]
  });

  function operateFormatter() {
    return [
      '<a class="edit" href="javascript:void(0)" title="Like">',
      '<i class="glyphicon glyphicon-edit"></i>',
      '</a>  ',
      '<a class="remove" href="javascript:void(0)" title="Remove">',
      '<i class="glyphicon glyphicon-remove"></i>',
      '</a>'
    ].join('');
  }

  function operateEvents() {
    return {
      'click .edit': function (e, value, row, index) {
        alert('You click like action, row: ' + JSON.stringify(row));
      },
      'click .remove': function (e, value, row, index) {
        $("#user-table").bootstrapTable('remove', {
          field: 'id',
          values: [row.id]
        });
      }
    }
  }
</script>
</body>
</html>
