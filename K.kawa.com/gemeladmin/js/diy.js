/**
 * 
 * @version        $Id: diy.js 1 22:28 2010年7月20日Z 
 */
 
 
function showHide2(objname){
    var obj = $Obj(objname);
    if(obj.style.display != 'block'){ obj.style.display = 'block' }
    else{  obj.style.display = 'none'; }
}