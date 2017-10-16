<?php
/**
 *
 * 显示购物车的商品
 *
 * @version        $Id: car.php 1 20:43 2010年7月8日Z 
 
 */
require_once (dirname(__FILE__) . "/../functions/common.inc.php");
define('_PLUS_TPL_', GEMELROOT.'/templets/plus');
require_once(GEMELINC.'/gemeltemplate.class.php');
require_once GEMELINC.'/shopcar.class.php';
require_once GEMELINC.'/memberlogin.class.php';
$cart = new MemberShops();

if(isset($dopost) && $dopost=='makeid')
{
    AjaxHead();
    $cart->MakeOrders();
    echo $cart->OrdersId;
    exit;
}
$cfg_ml = new MemberLogin();
//获得购物车内商品,返回数组
$Items = $cart->getItems();
if($cart->cartCount() < 1)
{
    ShowMsg("购物车中不存在任何商品！", "javascript:window.close();", false, 5000);
    exit;
}
@sort($Items);

$carts = array(
    'orders_id' => $cart->OrdersId,
    'cart_count' => $cart->cartCount(),
    'price_count' => $cart->priceCount()
);

$dtp = new GemelTemplate();
$dtp->Assign('carts',$carts);
$dtp->LoadTemplate(_PLUS_TPL_.'/car.htm');
$dtp->Display();
exit;