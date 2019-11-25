<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'xiaoshoubu.jsp' starting page</title>

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
<script type="text/javascript">
	//var arr = new Array('#00ffff', '#00ffff');
	//alert(arr);
	var count = 1;
	var order_id = 1;
	function addNew(aa) {
		tr = document.all.orderListTable.insertRow();
		tr.style.backgroundColor = '#FFFFFF';
		tr.insertCell().innerHTML = '<div   align=center>' + order_id;
				+ '</div>';
		tr.insertCell().innerHTML = '<div   align=center><input placeholder=\"请输入编号\" style=\"width:100px; float: left; height:20px;border:none\"  class=inputstyle   type=text maxlength=20  size=8  name=goodsNumber  class=border_index></div>';
		tr.insertCell().innerHTML = '<div   align=center><input placeholder=\"请输入数量\"   style=\"width:100px; float: left; height:20px;border:none\"  class=inputstyle   type=text maxlength=20  size=8  name=goodsQuantity   class=border_index></div>';
		tr.insertCell().innerHTML = '<div   align=center>' + '</div>';
		tr.insertCell().innerHTML = '<div   align=center>' + '</div>';
		tr.insertCell().innerHTML = '<div   align=center>' + '</div>';
		tr.insertCell().innerHTML = "<a href=javascript:void(0)  class=\"shenpi2\" onclick=del('"
				+ "tt" + count + "')>删除</a>";
		count++;
		order_id++;
	}

	//删除明细行 ...
function del(aa) {
    document.all.orderListTable
        .deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);
    count--;
    order_id--;
    var table = document.getElementById("orderListTable");
    for (var i = 2; i < table.rows.length; i++) {
        table.rows[i].cells[0].innerHTML = i - 1;
        table.rows[i].cells[0].style.textAlign = "center";
    }
}
</script>
<body>

<%
String userName = (String)session.getAttribute("userName");
%>
	<div class="dvcontent">

		<div>
			<!--tab start-->
			<div class="tabs">
				<div class="hd">
					<ul>
						<li class="on"
							style="box-sizing: initial;-webkit-box-sizing: initial;">处理订单</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">处理退货</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">查询库存</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">添加新客户</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">查询客户</li>
							<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">查询订单</li>
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
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="OrderServlet?method=add" method="post">
													<div class="am-form-group">
														<label for="xiaoshou-number"
															class="am-u-sm-3 am-form-label"> 订单编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="xiaoshou-number"
																readonly="readonly" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label class="am-u-sm-3 am-form-label"> 订单类型 </label>
														<div class="am-u-sm-9">
															<select name="type">
																<option value="现货">现货</option>
																<option value="预定">预定</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<label for="xiaoshou-client"
															class="am-u-sm-3 am-form-label"> 客户编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="xiaoshou-client"
																required="required" placeholder="请输入10位有效的客户编号"
																name="client">
														</div>
													</div>
													<div class="am-form-group">
														<label for="xiaoshou-staff"
															class="am-u-sm-3 am-form-label"> 销售员编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="xiaoshou-staff"
																readonly="readonly" placeholder="请输入10位有效的销售员编号"
																name="staff" value="<%= userName %>">
														</div>
													</div>
													<div class="am-form-group">
														<label for="xiaoshou-totalPrice"
															class="am-u-sm-3 am-form-label"> 总价 </label>
														<div class="am-u-sm-9">
															<input type="text" id="xiaoshou-totalPrice"
																readonly="readonly" placeholder="0-999999"
																name="totalPrice">
														</div>
													</div>
													<div class="am-form-group">
														<label class="am-u-sm-3 am-form-label"> 订单状态 </label>
														<div class="am-u-sm-9">
															<select name="status">
																<option value="未完成">未完成</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-5">
															<input type="submit" class="am-btn am-btn-success"
																value="添加订单" />
														</div>
														<div class="am-form-group">
															<table class ="table" width="100%" border="0" cellspacing="1" id="orderListTable">
																<tr class="firstpage1">
																	<td colspan="16" align="left">
																</tr>
																<tr class="firstpage">
																	<td height="23" width="20%" style="text-align: center">序号</td>
																	<td width="15%">货物编号</td>
																	<td width="10%">数量</td>
																	<td width="10%">名称</td>
																	<td width="10%">单位</td>
																	<td width="10%">单价</td>
																	<td width="20%"><a href="javascript:void(0)"
																		onclick="addNew()">添加明细</a></td>
																</tr>
															</table>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
								<!-- content end -->
							</div>
							<!--添加 end-->
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->

							<div class="am-cf admin-main" style="padding-top: 0px;">
								<!-- content start -->
								<div class="admin-content">
									<div class="admin-content-body">

										<div class="am-g">
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="user/addUser1Submit.action" method="post">

													<div class="am-form-group">
														<label for="tuihuo-number" class="am-u-sm-3 am-form-label">
															退货单号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-number" readonly="readonly"
																placeholder="请输入10位有效的订单编号" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															退货客户编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-clicent"
																required="required" placeholder="请输入10位有效的客户编号"
																name=" client">
														</div>
													</div>
													<div class="am-form-group">
														<label for="tuihuo-batch" class="am-u-sm-3 am-form-label">
															退货批次 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-batch" required="required"
																placeholder="请输入有效的退货批次" name="batch">
														</div>
													</div>
													<div class="am-form-group">
														<label for="tuihuo-number" class="am-u-sm-3 am-form-label">
															数量 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-number" required="required"
																placeholder="0-999" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															处理人编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-staff" readonly="readonly"
																name="staff">
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															是否核对 </label>
														<div class="am-u-sm-9">
															<select name="check">
																<option value="1">未核对</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="添加分类" />
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
								<!-- content end -->
							</div>
							<!--添加 end-->
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->

							<div class="am-cf admin-main" style="padding-top: 0px;">
								<!-- content start -->
								<div class="admin-content">
									<div class="admin-content-body">

										<div class="am-g">
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="user/addUser1Submit.action" method="post">

													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															食品1 </label>
														<div class="am-u-sm-9">
															<textarea class="" rows="1" id="user-intro"
																name="remark1"></textarea>
														</div>
													</div>
													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															食品2 </label>
														<div class="am-u-sm-9">
															<textarea class="" rows="1" id="user-intro"
																name="remark2"></textarea>
														</div>
													</div>
													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															食品3 </label>
														<div class="am-u-sm-9">
															<textarea class="" rows="1" id="user-intro"
																name="remark3"></textarea>
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="刷新" />
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
								<!-- content end -->
							</div>
							<!--添加 end-->
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->

							<div class="am-cf admin-main" style="padding-top: 0px;">
								<!-- content start -->
								<div class="admin-content">
									<div class="admin-content-body">

										<div class="am-g">
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="OrderServlet?method=addClient" method="post">

													<div class="am-form-group">
														<label for="kehu-number" class="am-u-sm-3 am-form-label">
															客户编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="kehu-number" readonly="readonly"
																name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label for="kehu-name" class="am-u-sm-3 am-form-label">
															姓名 </label>
														<div class="am-u-sm-9">
															<input type="text" id="kehu-name" required="required"
																placeholder="请输入10位有效的客户编号" name=" name">
														</div>
													</div>
													<div class="am-form-group">
														<label for="kehu-tele" class="am-u-sm-3 am-form-label">
															联系方式 </label>
														<div class="am-u-sm-9">
															<input type="text" id="kehu-tele" required="required"
																placeholder="请输入有效的 联系方式" name=" tele">
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															类型 </label>
														<div name="type" class="am-u-sm-9">
															<select>
																<option value="1">零售商</option>
																<option value="2">批发商</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															等级 </label>
														<div name="level" class="am-u-sm-9">
															<select>
																<option value="1">一等</option>
																<option value="2">二等</option>
																<option value="2">三等</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="添加客户" />
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- content end -->
						</div>
						<!--添加 end-->
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->

							<div class="am-cf admin-main" style="padding-top: 0px;">
								<!-- content start -->
								<div class="admin-content">
									<div class="admin-content-body">

										<div class="am-g">
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="user/addUser1Submit.action" method="post">

													<div class="am-form-group">
														<label for="kehu-name" class="am-u-sm-3 am-form-label">
															姓名 </label>
														<div class="am-u-sm-9">
															<input type="text" id="kehu-name" required="required"
																placeholder="客户姓名" name="name">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-5 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="查询客户信息" />
														</div>
													</div>
													<li>
														<!--分页显示角色信息 start-->
														<div id="dv1">
															<table class="table" id="tbRecord">
																<thead>
																	<tr>
																		<th>客户编号</th>
																		<th>客户姓名</th>
																		<th>联系方式</th>
																		<th>类型</th>
																		<th>等级</th>															
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>1</td>
																		<td>肉类</td>
																		<td></td>
																		<td></td>
																		<td></td>					
																	</tr>
																</tbody>

															</table>
														</div> <!--分页显示角色信息 end-->
													</li>
												</form>
											</div>
										</div>
									</div>

								</div>
								<!-- content end -->
							</div>
							<!--添加 end-->
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->

							<div class="am-cf admin-main" style="padding-top: 0px;">
								<!-- content start -->
								<div class="admin-content">
									<div class="admin-content-body">

										<div class="am-g">
											<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
											<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
												style="padding-top: 30px;">
												<form class="am-form am-form-horizontal"
													action="OrderServlet?method=queryById" method="post">

													<div class="am-form-group">
														<label for="kehu-id" class="am-u-sm-3 am-form-label">
															客户编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="kehu-id" required
																placeholder="客户编号" name="id">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-5 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="查询订单" />
														</div>										
													</div>
													<li>
														<!--分页显示角色信息 start-->
														<div id="dv1">
															<table class="table" id="tbRecord">
																<thead>
																	<tr>
																		<th>订单编号</th>
																		<th>订货类型</th>
																		<th>客户编号</th>
																		<th>销售员编号</th>
																		<th>总价</th>
																		<th>订单状态</th>
																		<th>详细</th>																
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>1</td>
																		<td>肉类</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td><a href="https://www.baidu.com" target="_blank">详细</a></td>						
																	</tr>
																</tbody>

															</table>
														</div> <!--分页显示角色信息 end-->
													</li>
												</form>
											</div>
										</div>
									</div>

								</div>
								<!-- content end -->
							</div>
							<!--添加 end-->
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

				$(".tabs").slide({
					trigger : "click"
				});

			});

			var btn_save = function() {
				var pid = $("#RawMaterialsTypePageId  option:selected").val();
				var name = $("#RawMaterialsTypeName").val();
				var desc = $("#RawMaterialsTypeDescription").val();
				var ramark = $("#Ramark").val();
				$.ajax({
					type : "post",
					url : "/RawMaterialsType/AddRawMaterialsType",
					data : {
						name : name,
						pid : pid,
						desc : desc,
						ramark : ramark
					},
					success : function(data) {
						if (data > 0) {
							$.jq_Alert({
								message : "添加成功",
								btnOktext : "确认",
								dialogModal : true,
								btnOkClick : function() {
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
					url : "/RawMaterialsType/EditRawMaterialsType?id=" + id,
					title : "编辑分类",
					dialogModal : true,
					iframeWidth : 500,
					iframeHeight : 400
				});
			}
			var btn_delete = function(id) {
				$.jq_Confirm({
					message : "您确定要删除吗?",
					btnOkClick : function() {

					}
				});
			}
		</script>

	</div>
</body>
</html>
