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
                    <a href="{$fiche.url_alias|ezurl('no')}">
                        {attribute_view_gui attribute=$fiche.data_map.intitule}
                    </a>
                </li>
            {/if}
        {/foreach}
    </ul>
{/if}

{node_view_gui view='line' content_node=$node}