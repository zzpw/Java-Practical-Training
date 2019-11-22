<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'caiwubu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" />
	<link rel="stylesheet" href="css/Site.css" />
	<link rel="stylesheet" href="css/zy.all.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/admin.css" />

  </head>
  
  <body>
    <div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
                        <ul style="">
                            <li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">查询</li>
                            <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">收款</li>
                            <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">付款</li>
                            <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">制定财务报表</li>
                        </ul>
					</div>
                    <div class="bd">
                        <ul class="theme-popbod dform" style="display: none;">
                            <div class="am-cf admin-main" style="padding-top: 0px;">
                                <!-- content start -->

                                <div class="am-cf admin-main" style="padding-top: 0px;">
                                    <!-- content start -->
                                    <div class="admin-content">
                                        <div class="admin-content-body">

                                            <div class="am-g">
                                                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                                                </div>
                                                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
                                                     style="padding-top: 30px;">
                                                    <form class="am-form am-form-horizontal"
                                                          action="user/addUser1Submit.action" method="post">

                                                        <div class="am-form-group">
                                                            <label for="caiwu-dingdan" class="am-u-sm-3 am-form-label">
                                                                订单编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="caiwu-dingdan"
                                                                       placeholder="请输入10位有效订单编号" name="number">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label class="am-u-sm-3 am-form-label">
                                                                客户编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <textarea class="" rows="1" id="user-intro" name="number"
                                                                          placeholder="请输入10位有效的客户编号"></textarea>
                                                                <small>二者选其一即可进行查询</small>
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                                <input type="submit" class="am-btn am-btn-success" value="查询" />
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- content end -->
                                </div>
                                <!-- end-->
                        </ul>
                        <ul class="theme-popbod dform" style="display: none;">
                            <div class="am-cf admin-main" style="padding-top: 0px;">
                                <!-- content start -->

                                <div class="am-cf admin-main" style="padding-top: 0px;">
                                    <!-- content start -->
                                    <div class="admin-content">
                                        <div class="admin-content-body">

                                            <div class="am-g">
                                                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                                                </div>
                                                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
                                                     style="padding-top: 30px;">
                                                    <form class="am-form am-form-horizontal"
                                                          action="user/addUser1Submit.action" method="post">

                                                        <div class="am-form-group">
                                                            <label for="caiwu-orderNumber" class="am-u-sm-3 am-form-label">
                                                                订单编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="caiwu-orderNumber" required="required"
                                                                       placeholder="请输入10位有效的订单编号" name="orderNumber">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label class="am-u-sm-3 am-form-label">
                                                                款项类型
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <select name="type">
                                                                    <option value="1">全款</option>
                                                                    <option value="2">定金</option>
                                                                    <option value="3">尾款</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="caiwu-money" class="am-u-sm-3 am-form-label">
                                                                款项数额
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="caiwu-money" required="required"
                                                                       placeholder="0-999999" name="money">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="caiwu-payee" class="am-u-sm-3 am-form-label">
                                                                付款客户编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="caiwu-payee" required="required"
                                                                       placeholder="请输入10位有效的客户编号" name="payee">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="caiwu-payer" class="am-u-sm-3 am-form-label">
                                                                收款员工编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="caiwu-payer" required="required"
                                                                       placeholder="请输入10位有效的员工编号" name="payer">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                                <input type="submit" class="am-btn am-btn-success" value="提交" />
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- content end -->
                                </div>
                                <!-- end-->
                        </ul>
                        <ul class="theme-popbod dform" style="display: none;">
                            <div class="am-cf admin-main" style="padding-top: 0px;">
                                <!-- content start -->

                                <div class="am-cf admin-main" style="padding-top: 0px;">
                                    <!-- content start -->
                                    <div class="admin-content">
                                        <div class="admin-content-body">

                                            <div class="am-g">
                                                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                                                </div>
                                                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
                                                     style="padding-top: 30px;">
                                                    <form class="am-form am-form-horizontal"
                                                          action="user/addUser1Submit.action" method="post">

                                                        <div class="am-form-group">
                                                            <label for="fukuan-serialNumber" class="am-u-sm-3 am-form-label">
                                                                订单编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="fukuan-serialNumber" 
                                                                       placeholder="请输入10位有效的退货订单编号" name="serialNumber">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label  class="am-u-sm-3 am-form-label">
                                                                款项类型
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <select name="moneyType">
                                                                    <option value="1">退款</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="fukuan-required" class="am-u-sm-3 am-form-label">
                                                                款项数额
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="fukuan-required" required="required"
                                                                       placeholder="0-999999" name="money">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="fukuan-operator" class="am-u-sm-3 am-form-label">
                                                                付款员工编号
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="fukuan-operator" required="required"
                                                                       placeholder="请输入10位有效的客户编号" name="operator">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="fukuan-date" class="am-u-sm-3 am-form-label">
                                                                日期
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="text" id="fukuan-date" required="required"
                                                                       placeholder="请输入10位有效的员工编号" name="date">
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                                <input type="submit" class="am-btn am-btn-success" value="提交" />
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- content end -->
                                </div>
                                <!-- end-->
                        </ul>
                        <ul class="theme-popbod dform" style="display: none;">
                            <div class="am-cf admin-main" style="padding-top: 0px;">
                                <!-- content start -->

                                <div class="am-cf admin-main" style="padding-top: 0px;">
                                    <!-- content start -->
                                    <div class="admin-content">
                                        <div class="admin-content-body">

                                            <div class="am-g">
                                                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                                                </div>
                                                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
                                                     style="padding-top: 30px;">
                                                    <form class="am-form am-form-horizontal"
                                                          action="user/addUser1Submit.action" method="post">

                                                        <div class="am-form-group">
                                                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                                                请选择时间
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <input type="month" value="2019-11" />
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <label for="user-intro" class="am-u-sm-3 am-form-label">
                                                                选择报表类型
                                                            </label>
                                                            <div class="am-u-sm-9">
                                                                <select>
                                                                    <option value="1">月报表</option>
                                                                    <option value="2">季度报表</option>
                                                                    <option value="3">年报表</option>
                                                                </select>
                                                                <small>根据选择的时间制定报表</small>
                                                            </div>
                                                        </div>
                                                        <div class="am-form-group">
                                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                                <input type="submit" class="am-btn am-btn-success" value="保存报表" />
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- content end -->
                                </div>
                                <!-- end-->
                        </ul>
                    </div>
				</div>
				<!--tab end-->

			</div>

			
			 <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
              <script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
              <script src="js/_layout.js"></script>
             <script src="js/plugs/jquery.SuperSlide.source.js"></script>
			<script>
				var num = 1;
				$(function() {

				 $(".tabs").slide({ trigger: "click" });

				});

	
				var btn_save = function() {
					var pid = $("#RawMaterialsTypePageId  option:selected").val();
					var name = $("#RawMaterialsTypeName").val();
					var desc = $("#RawMaterialsTypeDescription").val();
					var ramark = $("#Ramark").val();
					$.ajax({
						type: "post",
						url: "/RawMaterialsType/AddRawMaterialsType",
						data: { name: name, pid: pid, desc: desc, ramark: ramark },
						success: function(data) {
							if(data > 0) {
								$.jq_Alert({
									message: "添加成功",
									btnOktext: "确认",
									dialogModal: true,
									btnOkClick: function() {
										//$("#RawMaterialsTypeName").val("");
										//$("#RawMaterialsTypeDescription").val("");
										//$("#Ramark").val("");                           
										//page1();
										location.reload();

									}
								});
							}
						}
					});
					alert(t);
				}

				var btn_edit = function(id) {
					$.jq_Panel({
						url: "/RawMaterialsType/EditRawMaterialsType?id=" + id,
						title: "编辑分类",
						dialogModal: true,
						iframeWidth: 500,
						iframeHeight: 400
					});
				}
				var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "/RawMaterialsType/DeleteRawMaterialsType",
								data: { id: id },
								success: function(data) {
									if(data > 0) {
										$.jq_Alert({
											message: "删除成功",
											btnOkClick: function() {
												page1();
											}
										});
									}
								}
							});
						}
					});
				}
			</script>

		</div>
  </body>
</html>
