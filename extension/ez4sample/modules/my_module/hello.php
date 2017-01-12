<?php
$tpl = eZTemplate::factory();
$entitiesToDisplay = [];

/** @var eZContentObjectTreeNode $annuaire_de_contact */
$annuaire_de_contact = eZContentObjectTreeNode::subTreeByNodeID(
    ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['annuaire_de_contact']], 2
);

if ($annuaire_de_contact && is_array($annuaire_de_contact)) {
    $annuaire_de_contact = $annuaire_de_contact[0];

    $entites = eZContentObjectTreeNode::subTreeByNodeID(
        ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['entite']], $annuaire_de_contact->attribute("node_id")
    );

    if ($entites) {
        /** @var eZContentObjectTreeNode $entite */
        foreach ($entites as $entite) {
            $dataMap = $entite->attribute("data_map");
            /** @var eZContentObjectTreeNode $intitule */
            $intitule = $dataMap["intitule"];
            $intitule = $intitule->attribute("content");
            $url = $entite->attribute("url_alias");
            eZURI::transformURI($url);
            $entitiesToDisplay[] = ["name" => $intitule, "url" => $url];

//            echo sprintf("<h1><a href='%s'>%s</a></h1>",$url, $entite->Name);
            $contacts = eZContentObjectTreeNode::subTreeByNodeID(
                ['ClassFilterType' => 'include', 'Depth' => 1, 'ClassFilterArray' => ['contact']], $entite->attribute("node_id")
            );
            if ($contacts) {
                /** @var eZContentObjectTreeNode $contact */
                foreach ($contacts as $contact) {
                    $url = $contact->pathWithNames();
                    eZURI::transformURI($url);
//                    echo sprintf("<p><a href='%s'>%s</a></p>",$url, $contact->Name);
                }
            }
        }
    }
}

$tpl->setVariable("entityList", $entitiesToDisplay);

$Result["content"] = $tpl->fetch("design:my_module/hello.tpl");