Vim�UnDo� �YK]�KK��-�N�מ]�&�\��Ҕ+���   :   <?                             Sc�E    _�                            ����                                                                                                                                                                                                                                                                                                                                                             Sc�@    �          :      <?5�_�                             ����                                                                                                                                                                                                                                                                                                                                      :           V        Sc�D    �   1   3          	}�   0   2          		echo '</tr>';�   /   1          �		echo '<td align="center"><a href="detail_erreur.php?log_id='.$log_id.'&amp;err_id='.$Tab_Erreurs[$i]['err_id'].'">Go</a></td>';�   .   0          1		echo '<td>'.$Tab_Erreurs[$i]['err_dh'].'</td>';�   -   /          D		echo '<td>'.htmlspecialchars($Tab_Erreurs[$i]['err_lib']).'</td>';�   ,   .          A		echo '<td align="center">'.$Tab_Erreurs[$i]['err_num'].'</td>';�   +   -          ?		echo '<td align="right">'.$Tab_Erreurs[$i]['err_id'].'</td>';�   *   ,          		echo '<tr>';�   )   +          /	for ($i = 0; $i < count($Tab_Erreurs); $i++) {�                '	include ("srv/srv_liste_erreurs.php");�                '	// -----------------------------------�                '	// Gestion fonctionnelle du formulaire�                	}�                ,		header('Location:liste_integrations.php');�                		} else {�   
             		$log_id = $_GET['log_id'];�   	             	if (isset($_GET['log_id'])) {�      
          :	// ------------------------------------------------------�      	          ?	// On contrôle que l'identifiant a été passé en paramètre�                #	include ('../inc/inc_commun.php');�                	// ----------�                	// Inclusions�                	$form_optimizer_action = 3;�                	// ---------------�                 	// Initialisations5��