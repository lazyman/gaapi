<script language="JavaScript">
<!--
//ʱ�����뺯��������ѡ��ʱ��
function fPopUpCalendarDlg(ctrlobj)
{
	showx = event.screenX - event.offsetX;
	showy = event.screenY - event.offsetY + 18;
	newWINwidth =18;

	retval = window.showModalDialog("/include_time/calendardlg.htm", "", "dialogWidth:196px; dialogHeight:190px; dialogLeft:"+showx+"px; dialogTop:"+showy+"px; status:no; directories:yes;scrollbars:no;Resizable=no; "  );
	if( retval != null ){
		ctrlobj.value = retval;
	}
}

function bgcolor(object){
object.style.bordercolor="#999999";
object.style.bgcolor="#cccccc";
}
-->
</script>
