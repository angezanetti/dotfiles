Vim�UnDo� ���C�V0E&�<F���Gi��tW-h莅��                                      S��    _�                             ����                                                                                                                                                                                                                                                                                                                                       &           V        S��o     �              &   {*   * 2007-2013 PrestaShop   *   * NOTICE OF LICENSE   *   D* This source file is subject to the Academic Free License (AFL 3.0)   <* that is bundled with this package in the file LICENSE.txt.   >* It is also available through the world-wide-web at this URL:   ,* http://opensource.org/licenses/afl-3.0.php   @* If you did not receive a copy of the license and are unable to   <* obtain it through the world-wide-web, please send an email   B* to license@prestashop.com so we can send you a copy immediately.   *   * DISCLAIMER   *   L* Do not edit or add to this file if you wish to upgrade PrestaShop to newer   F* versions in the future. If you wish to customize PrestaShop for your   G* needs please refer to http://www.prestashop.com for more information.   *   1*  @author PrestaShop SA <contact@prestashop.com>   &*  @copyright  2007-2013 PrestaShop SA   Z*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)   A*  International Registered Trademark & Property of PrestaShop SA   *}   {if $dtechbox_popup}   �  {include file='../front/cnilmessage.tpl' assign='cnilMessage' dtechbox_url={$dtechbox_url} dtechbox_button='$.fancybox.close();' shop_name={$shop_name}}   :  <div style="display:none" id="openDtechboxPopupContent">       {$cnilMessage}     </div>   ;  {assign var='cnilHref' value='#openDtechboxPopupContent'}   {else}   F  {assign var='cnilHref' value=$base_dir|cat:'module/sellsecure/cnil'}   {/if}   <!-- sellsecure module -->   l<div style="color: #0477B8;background-color:#D7F0FF;min-height: 26px;line-height: 26px; text-align:center;">   �  <span style='padding:1px 8px;color:white;background-color:#008bc4;margin-right:10px;font-weight:bold;font-size:1.2em;'>i</span>  -  En poursuivant votre navigation sur ce site, vous acceptez la collecte d'identifiants de votre terminal dans le cadre des mesures visant &agrave; lutter contre la fraude. <a id="openDtechboxPopupLink" href="{$cnilHref}" style="cursor:pointer" type="button">Pour en savoir plus, ou vous y opposer</a>   </div>5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                f<script type="text/javascript" src="modules/sellsecure/js/sellsecure.js?unique_id={$uniqid}"></script>�             5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=modules/sellsecure/js/sellsecure.js?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=/sellsecure/js/sellsecure.js?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=sellsecure/js/sellsecure.js?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=/js/sellsecure.js?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=js/sellsecure.js?unique_id={$uniqid}"></script>5�_�      	                 g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=/sellsecure.js?unique_id={$uniqid}"></script>5�_�      
           	      g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=sellsecure.js?unique_id={$uniqid}"></script>5�_�   	              
      g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=.js?unique_id={$uniqid}"></script>5�_�   
                    g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=js?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=?unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���     �                �<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=unique_id={$uniqid}"></script>5�_�                       g    ����                                                                                                                                                                                                                                                                                                                                                  V        S���    �                |<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param=={$uniqid}"></script>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S��     �                  <!-- /sellsecure module -->5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S��     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S��    �                 5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             S�غ     �                  {<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param={$uniqid}"></script>5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             S���     �                  A<script type="text/javascript" src="/modules/dtechbox/"></script>5�_�                       A    ����                                                                                                                                                                                                                                                                                                                                                             S���     �                  L<script type="text/javascript" src="/modules/dtechbox/dtechbox.js"></script>5�_�                       H    ����                                                                                                                                                                                                                                                                                                                                                             S��    �                  ]<script type="text/javascript" src="/modules/dtechbox/dtechbox.js?param='{$uniqid}"></script>5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             S��P    �                  \<script type="text/javascript" src="/modules/dtechbox/dtechbox.js?param={$uniqid}"></script>5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��G     �                 _<script type="text/javascript" src="/modules/dtechbox/js/dtechbox.js?param={$uniqid}"></script>5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��G    �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��K     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��L     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��M     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��M    �                 5�_�                             ����                                                                                                                                                                                                                                                                                                                               8          8       V   8    S��     �                  h<!-- <script type="text/javascript" src="/modules/dtechbox/js/dtechbox.js?param={$uniqid}"></script> -->   {<script type="text/javascript" src="https://analytics2-qlf.sellsecure.com/analytics/analytics.js?param={$uniqid}"></script>5��