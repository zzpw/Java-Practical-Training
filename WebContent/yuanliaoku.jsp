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
							style="box-sizing: initial;-webkit-box-sizing: initial;">出库添加</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">管理仓储信息</li>
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">查看销毁单</li>
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
														<label for="yuanliao-scpc" class="am-u-sm-3 am-form-label">
															生产批次 </label>
														<div class="am-u-sm-9">
															<div class="am-u-sm-9">
															<input type="text" id="yuanliao-scpc" required="required"
																placeholder="请输入有效的生产批次" name="scpc">
															</div>
														</div>
													</div>
													<div class="am-form-group">
														<label for="yuanliao-people1" class="am-u-sm-3 am-form-label">
															经手人 </label>
														<div class="am-u-sm-9">
															<input type="text" id="yuanliao-people1" required="required"
																placeholder="请输入当前操作的员工号" name="people">
														</div>
													</div>
													<div class="am-form-group">
														<label for="yuanliao-people2" class="am-u-sm-3 am-form-label">
															接收人 </label>
														<div class="am-u-sm-9">
															<input type="text" id="yuanliao-people2" required="required"
																placeholder="请输入领取材料的员工编号" name="people2">
														</div>
													</div>
													<div class="am-form-group">
														<label for="yuanliao-time" class="am-u-sm-3 am-form-label">
															出库时间 </label>
														<div class="am-u-sm-4">
															<input type="text" id="yuanliao-time" required="required"
																placeholder="请输入有效的时间" name="time">
														</div>
														<label for="user-email" class="am-u-sm-1 am-form-label">
															数量 </label>
														<div class="am-u-sm-4">
															<input type="text" id="user-name" required
																placeholder="单位为箱" name="name">
														</div>
													</div>
													<div class="am-form-group">
														<label for="yuanliao-remark" class="am-u-sm-3 am-form-label">
															备注 </label>
														<div class="am-u-sm-9">
															<input type="text" id="yuanliao-remark" name="remark">
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															表格 </label>
														<table>
														</table>
													</div>			
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																value="添加原材料出库" />
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
														<label for="select" class="am-u-sm-3 am-form-label">
															选择查询内容 </label>
														<div class="am-u-sm-9">
															<select>
																<option value="1">批次信息</option>
																<option value="2">仓储信息</option>
															</select>
														</div>
													</div>
													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-5">
															<input type="submit" class="am-btn am-btn-success"
																value="查询" />
														</div>
													</div>
													<li>
														<!--分页显示角色信息 start-->
														<div id="dv1">
															<table class="table" id="tbRecord">
																<thead>
																	<tr>
																		<th>原材料批次</th>
																		<th>原材料编号</th>
																		<th>生产日期</th>
																		<th>保质期</th>
																		<th>提供商</th>
																		<th>数量</th>
																		<th>存储区域</th>
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
													action="user/addUser1Submit.action" method="post"
													id="delect-xiaohui">

													<div class="am-form-group">
														<label for="name" class="am-u-sm-3 am-form-label">
															原材料批次 </label>
														<div class="am-u-sm-9">
															<input type="text" id="user-name" required="required"
																placeholder="请输入有效的原材料批次" name="name">
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
															<table class="table" id="ycl-xiaohuimianban">
																<thead>
																	<tr>
																		<th>原材料批次</th>
																		<th>销毁数量</th>
																		<th>销毁日期</th>
																		<th>销毁人</th>
																		<th>备注</th>
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
