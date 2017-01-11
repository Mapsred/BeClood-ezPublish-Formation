{def $contact = $node.data_map}
{def $entite = $node.parent.data_map}

<h1>{attribute_view_gui attribute=$entite.intitule}</h1>
<p>Adresse : {attribute_view_gui attribute=$entite.adresse}</p>

<div class="name">{$node.name|wash}</div>
<div class="image">{attribute_view_gui attribute=$contact.image}</div>
