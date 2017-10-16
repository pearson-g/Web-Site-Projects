{gemel:field name='keywords'}站长之家, 电信, RSA加密{/gemel:field}
{gemel:field name='description'}一直以来，电信通过HTTP劫持推送广告的方式已经存在了很多年了，这种手段至今并未停止。{/gemel:field}
{gemel:field name='title'}电信级的RSA加密后密码的破解方法{/gemel:field}
{gemel:field name='writer'}{/gemel:field}
{gemel:field name='source'}{/gemel:field}
{gemel:field name='body'}<p style="text-align:center;">          </p>
                                                            <p>一直以来，电信通过HTTP劫持推送广告的方式已经存在了很多年了，这种手段至今并未停止。</p>
<p>虽然HTTP本身的不安全性导致有路由器控制权限的人（比如电信运营商）可以获得没有使用HTTPS登录认证的网站注册用户的密码，但一开始我并不认为电信运营商会犯触犯法律的风险进行实施。但现在我发现我错了。</p>
<p>现在有证据显示电信运营商非但获取没有加密的HTTP登录的用户名和密码，还会通过HTTP劫持的手段获取通过RSA加密的用户名和密码。</p>
<p>正如文中所说，国内某邮件服务商在登录入口处将用户输入的帐号和密码通过RSA加密后才会发送到网络上，通过截取网络数据包的方式已经无法对用户输入的密码进行破解了。但由于HTTP本身并没有加密功能，所以RSA的程序必须由邮件服务商以JavaScript的方式进行提供，而登录入口的HTML和所有的JavaScript会通过HTTP发送到用户的浏览器上。而正是由于HTTP的不安全性，导致电信运营商可以在HTML中插入附加的JavaScript代码，在对密码进行RSA加密之前将密码以明文形式发送到网络上。至此，密码已经可以通过抓取网络数据包的方式进行截取了。</p>
<p style="text-align: center; text-indent: 0;"><img src="/upload/allimg/c131114/13T4101D911F-4NZ.jpg" border="0" alt="3658_1" /></p>
<p>这种手段并非DNS级的域名劫持。如果是域名劫持，那么用户访问的也就不是邮件服务商的服务器，而是第三方的服务器了。如果要保证用户可以正常登录邮箱，那么第三方服务器就必须将用户浏览器的请求转发到邮件服务商，这样邮件服务商将会看到大量用户通过同一个或少数几个IP地址进行登录，很快就会发现问题。所以只有控制路由器进行TCP级别的HTTP劫持（仿冒邮件服务商的IP发送附加的JavaScript的数据包）才能做到神不知鬼不觉（虽然出了BUG导致曝光了，但如果没有BUG说不定到现在仍旧无人察觉）。</p>
<p>联想到《破解Google Gmail的https新思路》中所说的情况，电信运营商和国内的CA机构受到某些部门的指使进行实施，对SSL不了解的人完全可以做到神不知鬼不觉地破解用户的密码。如果是DNS劫持还可以通过多种手段进行反劫持，但如果通过类似HTTP劫持的这种IP仿冒的技术呢？据我观察，CNNIC根证书并未在各大浏览器中已被移除，所以关注于安全的朋友还是需要手动进行处理。也正如wooyun的文中所说，看到国内CA随便签署的证书，一定要保存下来提交给各大浏览器厂家，国内的中级CA还有很多。</p>
<p>题外话：虽然全球的网络自由在恶化，但并不代表我们就可以放弃追求网络自由。</p>
<p>来源：投稿，作者：&nbsp;lehui99 (at) gmail . com</p>{/gemel:field}
{gemel:field name='pubdate'}{/gemel:field}
{gemel:field name='litpic'}/upload/allimg/c131114/13T4101D911F-4NZ_lit.jpg{/gemel:field}
