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
                <h1>
                    <a href="{$theme.url_alias|ezurl('no')}">{attribute_view_gui attribute=$theme.data_map.intitule}</a>
                </h1>
                {def $fiches_pratiques=fetch( 'content', 'list', hash( 'parent_node_id', $theme.node_id,
                'class_filter_type',  'include',
                'depth', 1,
                'class_filter_array', array( 'fiche_pratique' )
                ) )}

                {if $fiches_pratiques|count}
                    {foreach $fiches_pratiques as $fiche_pratique }
                        <a href="{$fiche_pratique.url_alias|ezurl('no')}">
                            {attribute_view_gui attribute=$fiche_pratique.data_map.intitule}
                        </a>
                        <br>
                    {/foreach}
                {/if}

            {/foreach}
        {/if}
    {/if}
</div>

<div class="contacts">
    {def $annuaire_de_contact=fetch( 'content', 'list', hash( 'parent_node_id', $node.node_id,
    'class_filter_type',  'include',
    'depth', 1,
    'class_filter_array', array( 'annuaire_de_contact' )
    ) )}

    {if $annuaire_de_contact|count}
        {set $annuaire_de_contact = $annuaire_de_contact.0}
        {def $entites=fetch( 'content', 'list', hash( 'parent_node_id', $annuaire_de_contact.node_id,
        'class_filter_type',  'include',
        'depth', 1,
        'class_filter_array', array( 'entite' )
        ) )}

        {if $entites|count}
            {foreach $entites as $entite}
                <h1>
                    <a href="{$entite.url_alias|ezurl('no')}">
                        {attribute_view_gui attribute=$entite.data_map.intitule}
                    </a>
                </h1>
                {def $contacts=fetch( 'content', 'list', hash( 'parent_node_id', $entite.node_id,
                'class_filter_type',  'include',
                'depth', 1,
                'class_filter_array', array( 'contact' )
                ) )}
                {if $contacts|count}
                    {foreach $contacts as $contact }
                        <a href="{$contact.url_alias|ezurl('no')}">{$contact.name|wash}</a>
                        <br>
                    {/foreach}
                {/if}
            {/foreach}
        {/if}
    {/if}
</div>