{def $theme = $node.parent}
{def $fiches=fetch( 'content', 'list', hash( 'parent_node_id', $theme.node_id,
'class_filter_type',  'include',
'depth', 1,
'class_filter_array', array( 'fiche_pratique' )
) )}

{if $fiches|count}
    <ul class="left-column">
        {foreach $fiches as $fiche}
            {if $fiche.node_id|eq($node.node_id)}
                <li>{$fiche.name|wash}</li>
            {else}
                <li>
                    {node_view_gui view='line' content_node=$fiche}
                </li>
            {/if}
        {/foreach}
    </ul>
{/if}

<div class="intitule">
    <h1>{attribute_view_gui attribute=$node.data_map.intitule}</h1>
</div>

<div class="description">
    {attribute_view_gui attribute=$node.data_map.description}
</div>

<div class="source">
    <p>Source : {attribute_view_gui attribute=$node.data_map.lien_externe}</p>
</div>

<div class="image">
    <p>{attribute_view_gui attribute=$node.data_map.image}</p>
</div>

<div class="contacts">
    <p>{attribute_view_gui attribute=$node.data_map.contact}</p>
</div>
