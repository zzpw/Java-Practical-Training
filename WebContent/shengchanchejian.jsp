
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

<title>My JSP 'shengchanchejian.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
						<li class=""
							style="box-sizing: initial;-webkit-box-sizing: initial;">生产任务</li>
						<li class="on"
							style="box-sizing: initial;-webkit-box-sizing: initial;">执行生产</li>
					</ul>
				</div>
				<div class="bd">
					<ul class="theme-popbod dform" style="display: none;">
						<li>
							<!--分页显示信息 start-->
							<div id="dv1">
								<table class="table" name="task">
									<thead>
										<tr>


											<th>生产批次</th>
											<th>商品id</th>
											<th>数量</th>
											<th>生产日期</th>
											<th>查看原材料</th>
											<th>备注</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td class="edit">
												<button onclick="btn_edit(1)">
													查看原材料
												</button>
											</td>
											<td></td>
										</tr>

									</tbody>


								</table>
							</div> <!--分页显信息 end-->
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
													action="user/addUser1Submit.action" method="post">


													<div class="am-form-group">
														<label class="am-u-sm-3 am-form-label"> 生产批次 </label>
														<div class="am-u-sm-9">
															<input type="text" required placeholder="生产批次编号"
																name="batch">
														</div>
													</div>
													<div class="am-form-group">
														<label for="user-name" class="am-u-sm-3 am-form-label">
															班次 </label>
														<div class="am-u-sm-9">
															<select name="workShift">
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
															</select>
														</div>
													</div>

													<div class="am-form-group">
														<div class="am-u-sm-9 am-u-sm-push-3">
															<input type="submit" class="am-btn am-btn-success"
																name="tijiao" value="提交" />
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<footer class="admin-content-footer">
									<hr>
									<p class="am-padding-left"></p>
									</footer>
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
