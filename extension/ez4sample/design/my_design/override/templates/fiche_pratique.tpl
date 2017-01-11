{def $fiche_pratique = $node.data_map}
{def $theme = $node.parent.data_map}
{def $class = "" }

{def $fiches=fetch( 'content', 'list', hash( 'parent_node_id', $node.parent.node_id,
'class_filter_type',  'include',
'depth', 1,
'class_filter_array', array( 'fiche_pratique' )
) )}

{if $fiches|count}
    <ul class="left-column">
        {foreach $fiches as $fiche}
            {if $fiche.node_id|eq($node.node_id)}
                <li class="{$class}">{attribute_view_gui attribute=$fiche.data_map.intitule}</li>
            {else}
                <li class="{$class}">
                    <a href="{$fiche.path_identification_string|ezurl('no')}">
                        {attribute_view_gui attribute=$fiche.data_map.intitule}
                    </a>
                </li>
            {/if}
        {/foreach}
    </ul>
{/if}


<div class="intitule">
    <h1>{attribute_view_gui attribute=$fiche_pratique.intitule}</h1>
</div>

<div class="description">
    <p>{attribute_view_gui attribute=$fiche_pratique.description}</p>
</div>

<div class="source">
    <p>Source : {attribute_view_gui attribute=$fiche_pratique.lien_externe}</p>
</div>

<div class="image">
    <p>{attribute_view_gui attribute=$fiche_pratique.image}</p>
</div>

<div class="contacts">
    <p>{attribute_view_gui attribute=$fiche_pratique.contact}</p>
</div>

