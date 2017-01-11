{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let page_limit=10}
<form action={"class/grouplist"|ezurl} method="post" name="GroupList">

<div class="maincontentheader">
<h1>{"Class groups"|i18n("design/standard/class/list")}</h1>
</div>
<table class="list" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <th>&nbsp;</th>
    <th>{"Name"|i18n("design/standard/class/list")}</th>
    <th>{"Modifier"|i18n("design/standard/class/list")}</th>
    <th>{"Modified"|i18n("design/standard/class/list")}</th>
    <th>{"Edit"|i18n("design/standard/class/list")}</th>
    <th>{"Remove"|i18n("design/standard/class/list")}</th>
</tr>

{section name=Group loop=$groups sequence=array(bglight,bgdark)}
<tr class="{$Group:sequence}">
    <td width="1" align="right"><input type="radio" name="SelectedGroupID" value="{$Group:item.id}"{if $Group:index|eq( 0 )}checked="checked"{/if}></td>
    <td><a href={concat($module.functions.classlist.uri,"/",$Group:item.id)|ezurl}>{$Group:item.name|classgroup_icon( small, $Group:item.name )}&nbsp;{$Group:item.name|wash}</a></td>
    <td>{content_view_gui view=text_linked content_object=$Group:item.modifier.contentobject}</td>
    <td><span class="small">{$Group:item.modified|l10n(shortdatetime)}</span></td>
    <td width="1"><div class="listbutton"><a href={concat($module.functions.groupedit.uri,"/",$Group:item.id)|ezurl}><img class="button" src={"edit.gif"|ezimage} width="16" height="16" alt="Edit" /></a></div></td>
    <td width="1" align="right"><input type="checkbox" name="DeleteIDArray[]" value="{$Group:item.id}"></td>
</tr>
{/section}
<tr>
  <td colspan="5">
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewClassButton value="New class"|i18n("design/standard/class/list")}
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewGroupButton value="New group"|i18n("design/standard/class/list")}
  </td>
  <td align="right">
    <input type="image" name="RemoveGroupButton" value="{'Remove'|i18n('design/standard/class/list')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

{let latest_classes=fetch( class, latest_list, hash( limit, $page_limit ) )}

{section show=$latest_classes}
    <div class="maincontentheader">
        <h1>{"Last modified classes"|i18n("design/standard/class/list")}</h1>
    </div>
    <table class="list" width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <th>{"ID"|i18n("design/standard/class/list")}</th>
        <th>{"Name"|i18n("design/standard/class/list")}</th>
        <th>{"Identifier"|i18n("design/standard/class/list")}</th>
        <th>{"Modifier"|i18n("design/standard/class/list")}</th>
        <th>{"Modified"|i18n("design/standard/class/list")}</th>
        <th>{"Edit"|i18n("design/standard/class/list")}</th>
        <th>{"Copy"|i18n("design/standard/class/list")}</th>
    </tr>

    {section var=class loop=$latest_classes sequence=array( bglight, bgdark )}
        <tr class="{$class.sequence}">
            <td width="1%"><a href={concat( "/class/view/", $class.item.id )|ezurl}>{$class.item.id}</a></td>
            <td><a href={concat( "/class/view/", $class.item.id )|ezurl}>{$class.identifier|class_icon( small, $class.name )}&nbsp;{$class.item.name|wash}</a></td>
            <td>{$class.item.identifier|wash}</td>
            <td>{content_view_gui view=text_linked content_object=$class.item.modifier.contentobject}</td>
            <td><span class="small">{$class.item.modified|l10n(shortdatetime)}</span></td>
            <td width="1%"><div class="listbutton"><a href={concat("class/edit/",$class.item.id)|ezurl}><img class="button" src={"edit.gif"|ezimage} width="16" height="16" alt="edit" /></a></div></td>
            <td width="1%"><div class="listbutton"><a href={concat("class/copy/",$class.item.id)|ezurl}><img class="button" src={"copy.gif"|ezimage} width="16" height="16" alt="edit" /></a></div></td>
        </tr>
    {/section}
    </table>
{/section}

{/let}

</form>
{/let}