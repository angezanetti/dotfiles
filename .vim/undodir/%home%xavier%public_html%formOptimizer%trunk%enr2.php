Vim�UnDo� �"K��� xY�65�3t�dM��'Zu��8�!�  �                                    Scn�   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             S�*    �                !	include ('srv/srv_enr_MAJ.php');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S�,    �  �  �          <? �  �  �          <? �  �  �          <? �  �  �          <? �  �  �          <? �  }            <? �  w  y          <? �  j  l          <? �  \  ^          <? �  Q  S          <? �  I  K          <? �  =  ?          <? �  7  9          <? �  ,  .          <? �  &  (          <? �     "          <? �              <? �  
            	<div align="center"> �  �  �          					</div> �  �  �          							<? �  �  �          e					<div id="zone" align="left" style="width:590px; height:215px; overflow:auto;" class="win_blur"> �  �  �          				�  �  �          	<div align="center"> �  �  �          	�  �  �          	�  �  �          	�  �  �          	�  �  �          	echo '</div>';	�  �  �          	�  i  k          <? �  2  4          		}	�   �   �          H		document.getElementById('t3_14_2').src=document.img['3_14_2A'].src;	} �                	�                	�                	�                	5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Scn|    �         �      <?5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Scn�     �        �      	// Inclusions   	// ----------   !    $form_optimizer_action = 100;    	include ('inc/inc_commun.php');       	// Pour démo Jodie   	// ---------------           //   +    //@TODO : Mettre une trace ID dynamique       //   [	$req = "Select * From ".BDD_FO.".traces_brutes where trace_id ='502bb6cd44194827113282';";   6	/* $res = execution_requete_oci($req, $connexion); */   $	$res = execution_requete_oci($req);   	$enr = oci_fetch_object($res);   	if (!$enr) die;   (	$_POST['form_optimizer'] = $enr->TRACE;               !	include ('srv/srv_enr_SQL.php');   !	include ('srv/srv_enr_TAB.php');   !	include ('srv/srv_enr_CTL.php');   !	include ('srv/srv_enr_ANA.php');   !	include ('srv/srv_enr_DBG.php');   )	include ('srv/srv_enr_MAJ_ANALYSE.php');   !	include ('srv/srv_enr_LEC.php');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Scn�    �        �    5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                V       Scn�    �        �      if (!$enr) die;5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       Scn�   	 �        �          �        �    5��