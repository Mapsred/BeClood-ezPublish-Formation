<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">

<head>
    {include uri="design:page_head.tpl"}
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    {ezcss_load( array('my_design.css') )}

</head>
<body>

<div>

    {$module_result.content}

</div>

<!--DEBUG_REPORT-->

</body>
</html>
