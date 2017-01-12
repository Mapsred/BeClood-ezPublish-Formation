<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">

<head>
    {include uri="design:page_head.tpl"}
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    {ezcss_load( array('my_design.css') )}

</head>
<body>
<!--
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        ...
    </div>
</nav>
-->

{if $current_user.is_logged_in}
    <a href={"user/logout"|ezurl}>Me déconnecter</a>
{else}
    <a href={"user/login"|ezurl}>Me connecter</a>
{/if}


<div>
    {$current_user.name|wash}
    {*def $current_user=fetch('user','current_user')*}
    {$module_result.content}

</div>

<!--DEBUG_REPORT-->

</body>
</html>
