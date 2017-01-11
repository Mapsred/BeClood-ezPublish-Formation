<div class="fp">
    {def $base_de_connaisssance=fetch( 'content', 'list', hash( 'parent_node_id', $node.node_id,
    'class_filter_type',  'include',
    'depth', 1,
    'class_filter_array', array( 'base_de_connaissance' )
    ) )}

    {if $base_de_connaisssance|count}
        {set $base_de_connaisssance = $base_de_connaisssance.0}
        {def $themes=fetch( 'content', 'list', hash( 'parent_node_id', $base_de_connaisssance.node_id,
        'class_filter_type',  'include',
        'depth', 1,
        'class_filter_array', array( 'theme' )
        ) )}
        {if $themes|count}
            {foreach $themes as $theme }
                <h1>{attribute_view_gui attribute=$theme.data_map.intitule}</h1>
                {def $fiches_pratiques=fetch( 'content', 'list', hash( 'parent_node_id', $theme.node_id,
                'class_filter_type',  'include',
                'depth', 1,
                'class_filter_array', array( 'fiche_pratique' )
                ) )}

                {if $fiches_pratiques|count}
                    {foreach $fiches_pratiques as $fiche_pratique }
                        {attribute_view_gui attribute=$fiche_pratique.data_map.intitule}
                        <br>
                    {/foreach}
                {/if}

            {/foreach}
        {/if}
    {/if}
</div>

<div class="contacts">

</div>