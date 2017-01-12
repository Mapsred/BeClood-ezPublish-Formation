<?php
/**
 * Created by PhpStorm.
 * User: francois
 * Date: 12/01/17
 * Time: 11:53
 */

$Name = '';
$UpCase = false;
$Offset = 0;
if (isset($Params['name']) && trim($Params['name']) != '') {
    $Name = $Params['name'];
}
if (isset($Params['upcase']) && $Params['upcase']) {
    $UpCase = true;
}//pour les unorder_params, on utilise le nom interne
if (isset($Params['Offset']) && $Params['Offset']) {
    $Offset = $Params['Offset'];
}


$annuaire_de_contact = eZContentObjectTreeNode::subTreeByNodeID(
    ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['annuaire_de_contact']], 2
);
if ($annuaire_de_contact) {
    $annuaire_de_contact = $annuaire_de_contact[0];

    $entites = eZContentObjectTreeNode::subTreeByNodeID(
        ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['entite']], $annuaire_de_contact->NodeID
    );

    if ($entites) {
        foreach ($entites as $entite) {
            echo sprintf("<h1>%s</h1>", $entite->Name);
            $contacts = eZContentObjectTreeNode::subTreeByNodeID(
                ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['contact']], $entite->NodeID
            );
            if ($contacts) {
                foreach ($contacts as $contact) {
                    echo sprintf("<p>%s</p>", $contact->Name);
                }
            }
        }

    }
}


/*




 */