Vim�UnDo� )u�W��u[σ���z��v@�~�+X@Bx"    �   
    }else{   �         #       #   #   #    Sc�N    _�                            ����                                                                                                                                                                                                                                                                                                                                                             Sc��     �          �      <?5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Sc��    �         �      k5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Sc��     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Sc��    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �   �   �          	}	�   �   �          1		$Lib_Err = 'Le nom du fichier est obligatoire';�   �   �          	}else{�   �   �          		}�   �   �          F			$Lib_Err = 'Problème lors de l\'upload. Code erreur '.$codeErreur;�   �   �          
		} else {�      �          			}�   ~   �          0				$Lib_Err = 'Le fichier choisi est invalide';�   }             				}else{�   |   ~          G				if(!$uploadOk) $Lib_Err = 'Problème lors de l\'upload du fichier';�   {   }          S				$uploadOk = move_uploaded_file($nomTemporaire, DESTINATION_FOLDER.$nomFichier);�   z   |          @				// Ensuite, on copie le fichier uploadé ou bon nous semble.�   y   {          @				// On teste ensuite si le fichier a une extension autorisée�   x   z          			if($poidsFichier <> 0){�   w   y          		if ($codeErreur == 0) {�   v   x          		// sinon, le script continue.�   u   w          :		// invalide (ou le chemin incorrect) => message d'erreur�   t   v          :		// Si le poids du fichier est de 0 bytes, le fichier est�   s   u          )		$extension = strrchr($nomFichier, ".");�   r   t          		// Extension du fichier�   q   s          *		$codeErreur = $_FILES["file"]["error"] ;�   p   r          .		// Code de l'erreur si jamais il y en a une:�   o   q          +		$poidsFichier = $_FILES["file"]["size"] ;�   n   p          (		// Poids en octets du fichier choisit:�   m   o          *		$typeFichier = $_FILES["file"]["type"] ;�   l   n          		// Type du fichier choisi:�   k   m          0		$nomTemporaire = $_FILES["file"]["tmp_name"] ;�   j   l          #		// Nom temporaire sur le serveur:�   i   k          )		$nomFichier = $_FILES["file"]["name"] ;�   h   j          		// Nom du fichier choisi:�   g   i          %	if(!empty($_FILES["file"]["name"])){�   f   h          "	// ------------------------------�   e   g          %	// Contrôle du fichier à intégrer�   d   f          	}�   c   e          (		global ${$Tab_Var[$i]['name'].'_err'};�   b   d          !		global ${$Tab_Var[$i]['name']};�   a   c          	for ($i = 0; $i < $nb; $i++) {�   `   b          	$nb = count($Tab_Var);�   _   a          )	// -------------------------------------�   ^   `          +	// Déclaration des variables à controler�   ]   _          'global $Tab_Var, $Lib_Err, $nomFichier;�   V   X          	}�   U   W          		return false;�   T   V          		} else {�   S   U          		return true;�   R   T          	if (Controles()) {�   Q   S           	$_POST['form_optimizer'] = $ch;�   P   R          "	unset ($_POST['form_optimizer']);�   I   K          :	rename('integrer\\'.$nomFichier, 'traite\\'.$nomFichier);�   H   J          4	// ------------------------------------------------�   G   I          6	// Déplacement du fichier dans le répertoire traite�   F   H          	fclose($handle);�   E   G          	// --------------------�   D   F          	// Fermeture du fichier�   C   E          	}�   B   D          (		if (!Analyse_batch($contents)) return;�   A   C          	if ($contents != '') {�   @   B          (	// ------------------------------------�   ?   A          (	// Traitement du dernier enregistrement�   >   @          	}�   =   ?          		}�   <   >          			}�   ;   =          )				$contents = substr($contents, $Pos2);�   :   <          H				if (!Analyse_batch(substr($contents, $Pos1, $Pos2 - $Pos1))) return;�   9   ;          			} else {�   8   :          				$fin = true;�   7   9          			if ($Pos2 === false) {�   6   8          6			$Pos2 = strpos($contents, '<contexte>', $Pos1 + 1);�   5   7          			}�   4   6          				return;�   3   5          :				$Lib_Err = 'Balise <contexte> de début non trouvée';�   2   4          			if ($Pos1 === false) {�   1   3          +			$Pos1 = strpos($contents, '<contexte>');�   0   2          		while (!$fin) {�   /   1          		$fin = false;�   .   0          =		// --------------------------------------------------------�   -   /          >		// Tant que l'on trouve des traces complètes, on les traite�   ,   .          $		$contents .= fread($handle, 8192);�   +   -          	while (!feof($handle)) {�   *   ,          	$contents = '';�   )   +          0	$handle = fopen('integrer\\'.$nomFichier, 'r');�   (   *          #	// -------------------------------�   '   )          %	// Ouverture du fichier à intégrer�   &   (          global $nomFichier, $Lib_Err;�       "          	}�      !          6		if ($Lib_Err == '') Traitement_Fichier_A_Integrer();�                 		controle_zones();�                H		if (get_magic_quotes_gpc() == 1) $_POST = traiter_tripslashes($_POST);�                :	if (isset($_GET['mode']) && isset($_POST['fm_action'])) {�                <	// --------------------------------------------------------�                	//		On initialise chaque zone�                		// Sinon�                9	//		On vérifie chaque zone et on effectue le traitement�                #	// Si le formulaire a été posté�                	// Contrôle des zones :�                	}�                &		${$Tab_Var[$i]['name'].'_err'} = '';�                	for ($i = 0; $i < $nb; $i++) {�                	$nb = count($Tab_Var);�                )	// -------------------------------------�                +	// Déclaration des variables à controler�                :	$Tab_Var[count($Tab_Var)] = array('name' => 'file'					);�                	$Tab_Var = array();�                &	// ----------------------------------�   
             '	// Définition des zones du formulaire�   	             	�      
          "	include ('srv_batch_commun.php');�      	          8	// ----------------------------------------------------�                ;	// Définition des listes (civilité, départements, pays)�                0	define ('DESTINATION_FOLDER', 			 'integrer/');�                	// -------------------------�                	// Répertoire de destination5�_�                           ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��     �         �      /define ('DESTINATION_FOLDER', 			 'integrer/');5�_�                           ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��     �         �      .define ('DESTINATION_FOLDER',			 'integrer/');5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��     �         �      -define ('DESTINATION_FOLDER',		 'integrer/');5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �         �      ,define ('DESTINATION_FOLDER',	 'integrer/');5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �         �      +define ('DESTINATION_FOLDER', 'integrer/');5�_�   
                   %    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��     �          �      J    if (get_magic_quotes_gpc() == 1) $_POST = traiter_tripslashes($_POST);5�_�                           ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �      !   �              �      !   �    5�_�                    "       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �   #   %   �              �   #   %   �    �   !   $   �      8    if ($Lib_Err == '') Traitement_Fichier_A_Integrer();5�_�                    *   (    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��   	 �   )   ,   �      *function Traitement_Fichier_A_Integrer() {5�_�                   @   M    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�     �   ?   B   �      T                if (!Analyse_batch(substr($contents, $Pos1, $Pos2 - $Pos1))) return;5�_�                    A       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�     �   A   C   �                          �   A   C   �    5�_�                    B       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�
   
 �   A   C   �                      }k5�_�                    J   '    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�     �   I   L   �      .        if (!Analyse_batch($contents)) return;5�_�                    K       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�    �   K   M   �                  �   K   M   �    5�_�                    Y       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�    �   X   [   �      function Analyse_batch($ch) {5�_�                    g       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�    �   f   i   �      function controle_zones() {5�_�                    s       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�      �   r   t   �      (    if(!empty($_FILES["file"]["name"])){5�_�                    s   (    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�,    �   r   t   �      )    if (!empty($_FILES["file"]["name"])){5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�4     �   �   �   �      #            if($poidsFichier <> 0){5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�6    �   �   �   �      $            if ($poidsFichier <> 0){5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�9    �   �   �   �      $            if ($poidsFichier <> 0 {5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�>     �   �   �   �      S                if(!$uploadOk) $Lib_Err = 'Problème lors de l\'upload du fichier';5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�B    �   �   �   �                          �   �   �   �    �   �   �   �      T                if (!$uploadOk) $Lib_Err = 'Problème lors de l\'upload du fichier';5�_�                     �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�E     �   �   �   �                  }else{5�_�      !               �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�G     �   �   �   �                  } else{5�_�       "           !   �       ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�J     �   �   �   �      
    }else{5�_�   !   #           "   �   
    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�K     �   �   �   �          } else{5�_�   "               #   W        ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc�M    �   �   �              }	�   V   X          E// Intégration des traces en batch : On ne charge que traces_brutes	5�_�                    @   J    ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��     �   ?   A   �      L                if (!Analyse_batch(substr($contents, $Pos1, $Pos2 - $Pos1) {                   ) return;�   A   B   �                      �   A   C   �                      }5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                       �           V        Sc��    �         �           if (get_magic_quotes_gpc() {   3        == 1) $_POST = traiter_tripslashes($_POST);�          �              �      !   �          }5��