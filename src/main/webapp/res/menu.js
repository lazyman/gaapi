// JavaScript Document


	function showmenu(objid) {
		var obj = document.getElementById(objid);
		obj.style.display = "";
	}
	function hidemenu(objid) {
		var obj = document.getElementById(objid);
		obj.style.display = "none";
	}
	function overitem(obj) {
		obj.className = "menuitemSel";
	}
	function outitem(obj) {
		obj.className = "menuitem";
	}
	