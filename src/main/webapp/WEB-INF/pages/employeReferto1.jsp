<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JDDC Internal Management System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">

</head>
<body > 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<TR>
		<TD>
			
		<table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border">
			<tr>
				<td>
					<table border="0" width="100%" height="60" bgcolor="#003366">
						<tr>
							<td	width="11" rowspan="2">	</td>
							<td	width="65">
								<img	src="img/hp_logo.gif" width="47" height="28">
								<br><span	class="titleJDDC">JDDC</span>
							</td>
							<td	rowspan="2">
								  <table height="52"	width="100%" border="0">
										  <tr>
											  <td	colspan="2"	height="10">
											    <p align="right" class="titleLeft"><font face="Cooper	Black">JDDC	Internal Management	System</font></p>
											  </td>
										  </tr>
										  <tr>
										  	<td	width=40%>&nbsp;</td>
											  <td><p class="titleCenter"><font face="Times New Roman"><b>社員情報参照</b></font></p></td>
										  </tr>
								  </table>
							</td>
						</tr>
					</table>
					
					<table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF">
						<tr	bgcolor="#85B7FA">
							<td>&nbsp;</td>
							<td	width="150"	class="txt_normal">操作者：Manager</td>
							<td	width="60" class="txt_normal"><div align="right"><a	href="Login.htm">ログアウト</a></div></td>
						</tr>
					</table>
					<HR>
					<table border="0" cellspacing="0" cellpadding="0" width="100%" >
						<tr>
							<td	valign="top" >
								<div align="center" class="div_naviarea" id="navi" >
									<!-- navigator area	start here -->
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td	width="2" rowspan="12" bgcolor="#808080" >&nbsp;</td>
											<td	width="205"	>
												<table	border="0" cellspacing="0" cellpadding="0" width="100%"	>
													                                                        <tr> 
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;社員管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./employeRegister00.htm" target="_self">社員情報登録</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./employeQuery.htm" target="_self">社員情報検索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./confirmInfoQuery.htm" target="_self">社員情報承認</a></span></td> 
			                                            </tr> 
														</tr>  			                                           
                                                             <td height="30"><span class="menuBranch">&#8226;プロジェクト管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/employeeProjectFunnelList" target="_self">プロジェクト情報登録</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/ProjectQuery" target="_self">プロジェクト情報照会</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報承認</a></span></td> 
			                                            </tr>  														

			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報更新</a></span></td> 
			                                            </tr> 
														<tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">PD/PMアセイン情報更新</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;稼動管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/ResourceConfirmInfoQuery" target="_self">リソース情報承認</a></span></td> 
			                                            </tr> 	
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceQuery" target="_self">リソース情報検索</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceUsedQuery" target="_self">リソース稼働情報検索</a></span></td> 
			                                            </tr> 		                                           
			                                             <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;システム管理</span></td> 
			                                            </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="employeRoleAssign1.htm" target="_self">社員ロールアサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="roleResourceList.htm" target="_self">ロール機能権限アサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="passwordChange.htm" target="_self">パースワード変更</a></span></td> 
						                                      </tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
												</table>
											</td>
											<td	width="1" rowspan="12" bgcolor="#808080"></td>
										</tr>
									</table>
									<!-- navigator area	end	here -->
								</div>
							</td>
							
							<td	width="750"	align="center" valign="top">
								<!-- Work area	start here -->
								<form name="form1" method="post" action="">
									<div class="div_workarea">

	                    			<table width="90%" border="0" cellpadding="1" cellspacing="1" align="left">
	                    			<!-- 社員基本情報 -->
									    <tr height="20">
									    	<td colspan="4"><span class="txt_normal"><b>社員基本情報</b></span></td>
									    </tr>
										<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">EID</font></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.eid }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">メールアドレス</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.mailAddress }</span></td>                              
					                    </tr>                     
				                        <tr><td><br></td></tr>
				                        <tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">名前(中国語漢字)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameCn }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">名前(ローマ字)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.name }</span></td>                         
				                        </tr> 
				                        <tr>	
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">名前(日本語漢字)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameKanji }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">名前(日本語カナ)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameKana }</span></td>                           
				                        </tr>
										<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">英名</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.englishName }</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">レポートマネージャー</span></td>
					                        <td class="trOdd"><span class="txt_normal">${emp.managerEid}</span></td>
										</tr> 
										<tr><td><br></td></tr>
											
					                    <tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">誕生日</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.birthday }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">性別</span></td> 
					                        <td><input type="radio" value="M" name="gender" ${emp.gender=='M'?"checked='checked'":"" }><span class="txt_normal">男</span>
										        <input type="radio" value="F" name="gender" ${emp.gender!='M'?"checked='checked'":""}><span class="txt_normal">女</span>
															  </td>                     
										</tr>                                										
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">電話番号</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.telNo }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">携帯番号</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.mobileNo }</span></td> 
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">緊急連絡番号</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.emergencyTelNo}</span></td>
					                        <td width="134" class="trEven">&nbsp;</td>
					                        <td class="trOdd"></td>
				                      	</tr>
				                      	<tr><td><br></td></tr>
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">ロケーションコード</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.location.code}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">サイト</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.site.code}</span></td>                           
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">部署</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.department.name}</span></td>                     	
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">在職ステータス</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.work.name}</span></td>                         	
				                    	</tr>	
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">Billable区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp. billableFlag}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">マネージャー区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp. type.name}</span></td>                                             
				                      	</tr> 
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">HP/BP区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">Regular</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">所属会社</span></td> 
					                        <td class="trOdd"><span class="txt_normal">HP</span></td>                                                  
				                     	</tr>                                           	
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">入社日</span></td> 
					                        <td class="trOdd"><span class="txt_normal">2005/09/16</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">退社日</span></td> 
					                        <td class="trOdd"><span class="txt_normal"></span></td>
				                      	</tr> 
				                      	<tr><td cols="4"><br></td></tr>
                      
				                     	<!-- 日本経歴及びVisa情報 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>日本経歴及びVisa情報</b></span></td>
				                      	</tr>
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">日本へ滞在年限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">3年</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">日本語レベル</span></td> 
					                        <td class="trOdd"><span class="txt_normal">Level1</span></td>                                                 
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">パスポート有無</span></td> 
					                        <td class="trOdd"><span class="txt_normal">有</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">パスポート有効期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">2008/10/20</span></td>                        	
				                      	</tr>                                  										
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">ビザ有無</span></td> 
					                        <td class="trOdd"><span class="txt_normal">無</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">ビザ種類</span></td> 
					                        <td class="trOdd"><span class="txt_normal">None/Expired</span></td>                                                 
				                      	</tr>  
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">ビザ有効期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal"><br></span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">再入国期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal"><br></span></td>                                                 
				                      	</tr>  									    
				                      	<tr><td cols="4"><br></td></tr>
                      
				                      	<!-- JOB情報 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>JOB情報</b></span></td>
				                      	</tr>
				                      	<tr align="left" >
				                      		<td colspan="4">
					              				<table border="0" width="675" cellspacing="1" cellpadding="1">
													<tr class="trHeader">
														<td nowrap width="120" align="center" class="txt_table_head">GDCC JOB Title</td>
														<td nowrap width="150" align="center" class="txt_table_head">Delivery Capability 認定</td>
														<td nowrap width="120" align="center" class="txt_table_head">JDDC 組織 Title</td>
														<td nowrap width="80" align="center" class="txt_table_head">承認状態</td>
														<td nowrap align="center" class="txt_table_head">備考</td>
													</tr>
													<tr class="trOdd">
														<td nowrap align="center"><span class="txt_normal">Software Engineer</span></td>
														<td nowrap align="center"><span class="txt_normal">SSE</span></td>
														<td nowrap align="center"><span class="txt_normal">TM</span></td>
														<td nowrap align="center"><span class="txt_normal">承認待ち</span></td>
														<td nowrap align="center"><span class="txt_normal"></span></td>
													</tr>																														
												</table>
											</td>
										</tr>
				                      	<tr><td cols="4"><br></td></tr>
                      
									    <!-- 社員資格情報 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>社員資格情報</b></span></td>
				                      	</tr>
				                      	<tr align="left" >
				                      		<td colspan="4">
              									<table border="0" width="300" cellspacing="1" cellpadding="1">
													<tr class="trHeader">
														<td width="70%" align="center" class="txt_table_head">資格認証</td>
														<td width="30%" align="center" class="txt_table_head">取得日付</td>
													</tr>
													<tr class="trOdd">
														<td nowrap width="70%" align="center"><span class="txt_normal">MSDBA</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">2002/03/26</span></td>
													</tr>
													<tr class="trEven">
														<td nowrap width="70%" align="center"><span class="txt_normal">SCJP</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">2005/03/26</span></td>
													</tr>																		
												</table>
											</td>
										</tr>
                      					<tr><td cols="4"><br></td></tr>
                      
									    <!-- 社員スキル情報 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>社員スキル情報</b></span></td>
				                      	</tr>                      
				                      	<tr align="left">
				                      		<td colspan="4">
              									<table border="0" width="300" cellspacing="1" cellpadding="1">
													<tr class="trHeader">
														<td width="70%" align="center" class="txt_table_head">スキル</td>
														<td width="30%" align="center" class="txt_table_head">スキルレベル</td>
													</tr>
													<tr class="trOdd">
														<td nowrap width="70%" align="center"><span class="txt_normal">Java</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">intermediate</span></td>
													</tr>
													<tr class="trEven">
														<td nowrap width="70%" align="center"><span class="txt_normal">C++</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">basic</span></td>
													</tr>
													<tr class="trOdd">
														<td nowrap width="70%" align="center"><span class="txt_normal">PL/SQL</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">master</span></td>
													</tr>																															
												</table>
											</td>
										</tr>
										<tr>
						  					<td colspan="4" align="center"><br>
						  						<input type="button" id ="B3" value="    戻　る     " class="string" onClick="openWindow('employeeProjectFunnelList.htm')"/></td>
						  					</td>
                      					</tr>                      
									</table>
							    	</div>
						    	</form>
						    	<!-- Work area end here	-->
						  	</td>
					  	</tr>
				  	</table>
				</td>
		  	</tr>		  
			  
			<!--	Footer area	start here -->
			<tr>
				<td	height="1"></td>
			</tr>
			<tr>
				<td	height="20"	bgcolor="#003366"></td>
			</tr>	
			<tr>
				<td><div align="center"	class="string">	© Copyright	2007 Hewlett-Packard TSG-JDDC </div></td>
			</tr>
			<!-- Footer	area end here -->
		</table>

	  	</TD>
	</TR>
</table>
</div> 
</body>
<script type="text/javascript">
	$("#back").click(function(){
		window.history.back();
		
	});
</script>
</html>
