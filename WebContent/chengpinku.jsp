<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<body>
	<div class="dvcontent">

		<div>
			<!--tab start-->
			<div class="tabs">
				<div class="hd">
					<ul>
						<li class="on"
							style="box-sizing: initial;-webkit-box-sizing: initial;">入库添加</li>
						<li class="on"
							style="box-sizing: initial;-webkit-box-sizing: initial;">出库添加</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">管理仓储信息</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">查看销毁单</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">退货确认</li>
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
													action="user/addUser1Submit.action" method="post">

													<div class="am-form-group">
														<label for="rukuid" class="am-u-sm-3 am-form-label">
															入库单号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="rukuid" required=""
																readonly="readonly" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label for="ruku-time" class="am-u-sm-3 am-form-label">
															入库时间 </label>
														<div class="am-u-sm-9">
															<input type="text" id="ruku-time" required=""
																placeholder="请输入10位有效的客户编号" name="date">
														</div>
													</div>
													<div class="am-form-group">
														<label for="ruku-scpc" class="am-u-sm-3 am-form-label">
															生产批次 </label>
														<div class="am-u-sm-9">
															<input type="text" id="ruku-scpc" required="required"
																placeholder="请输入有效的生产批次" name="batch">
														</div>
													</div>
													<div class="am-form-group">
														<label for="ruku-number" class="am-u-sm-3 am-form-label">
															实入数量 </label>
														<div class="am-u-sm-9">
															<input type="text" id="ruku-number" required="required"
																name="actualNumber">
														</div>
													</div>
													<div class="am-form-group">
														<label for="ruku-people" class="am-u-sm-3 am-form-label">
															经手人 </label>
														<div class="am-u-sm-9">
															<input type="text" id="ruku-people" required="required"
																placeholder="请输入自己的工号" name="handler">
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															存储区域 </label>
														<div class="am-u-sm-9">
															<select name="storagePlace">
																<option value="1">A</option>
																<option value="2">B</option>
																<option value="3">C</option>
																<option value="4">D</option>
																<option value="5">E</option>
																<option value="6">F</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<label for="ruku-remark" class="am-u-sm-3 am-form-label">
															备注 </label>
														<div class="am-u-sm-9">
															<input type="text" id="ruku-remark" name="remarks">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="添加入库单" />
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
						</div>
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
														<label for="chuku-id" class="am-u-sm-3 am-form-label">
															出库单号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-id" required=""
																readonly="readonly" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-time" class="am-u-sm-3 am-form-label">
															出库时间 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-time" required="required"
																placeholder="注意时间格式" name="date">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-ddh" class="am-u-sm-3 am-form-label">
															订单号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-ddh" required="required"
																placeholder="请输入有效的订单号" name="orderNumber">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-ccpc" class="am-u-sm-3 am-form-label">
															生产批次 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-ccpc" required="required"
																placeholder="请输入有效的生产批次" name="batch">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-number" class="am-u-sm-3 am-form-label">
															数量 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-number" required="required"
																placeholder="" name="quantity">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-people" class="am-u-sm-3 am-form-label">
															经手人 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-people" required="required"
																placeholder="请输入有效的员工编号" name="quantity">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-tele" class="am-u-sm-3 am-form-label">
															接收者联系方式 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-tele" placeholder=""
																name="recipientPhone">
														</div>
													</div>
													<div class="am-form-group">
														<label for="chuku-remark" class="am-u-sm-3 am-form-label">
															备注 </label>
														<div class="am-u-sm-9">
															<input type="text" id="chuku-remark" name="remarks">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="添加出库单" />
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
						</div>
					</ul>
					<ul class="theme-popbod dform" style="display: none;">
						<li>
							<!--分页显示角色信息 start-->
							<div id="dv1">
								<table class="table" id="WarehouseInfo">
									<thead>
										<tr>
											<th>商品编号</th>
											<th>数量</th>
											<th>生产日期</th>
											<th>生产批次</th>
											<th>存储区域</th>
											<th>编辑</th>
											<th>删除</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>肉类</td>
											<td></td>
											<td></td>
											<td></td>
											<td class="edit"><button onclick="btn_edit(1)">
													<i class="icon-edit bigger-120"></i>编辑
												</button></td>
											<td class="delete"><button onclick="btn_delete(1)">
													<i class="icon-trash bigger-120"></i>删除
												</button></td>
										</tr>
									</tbody>

								</table>
							</div> <!--分页显示角色信息 end-->
						</li>
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
													action="user/addUser1Submit.action" method="post"
													id="delect-xiaohui">

													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															输入销毁单号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="user-name" required="required"
																placeholder="请输入有效的销毁单号" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="确认销毁" />
														</div>
													</div>
												</form>
												<form class="am-form am-form-horizontal"
													action="user/addUser1Submit.action" method="post"
													id="delect-xiaohui">
													<li>
														<!--分页显示角色信息 start-->
														<div id="dv1">
															<table class="table" id="xiaohuimianban">
																<thead>
																	<tr>
																		<th>商品编号</th>
																		<th>数量</th>
																		<th>生产日期</th>
																		<th>生产批次</th>
																		<th>存储区域</th>
																		<th>编辑</th>
																		<th>删除</th>
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
																		<td></td>
																	</tr>
																</tbody>

															</table>
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
														<label for="tuihuo-id" class="am-u-sm-3 am-form-label">
															退货编号 </label>
														<div class="am-u-sm-9">
															<input type="text" id="tuihuo-id" required
																placeholder="退货编号" name="number">
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-5 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="查询退货单" />
														</div>
														<div class="am-u-sm-5 am-u-sm-push-1">
															<input type="submit" class="am-btn am-btn-success"
																value="确认完毕" />
														</div>
													</div>
													<li>
														<!--分页显示角色信息 start-->
														<div id="dv1">
															<table class="table" id="tbRecord">
																<thead>
																	<tr>
																		<th>退货单号</th>
																		<th>退货客户</th>
																		<th>退货批次</th>
																		<th>数量</th>
																		<th>处理人</th>
																		<th>提交时间</th>																
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
