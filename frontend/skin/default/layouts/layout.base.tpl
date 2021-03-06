{**
 * Основной лэйаут
 *}

{extends 'component@docs:layout.layout'}

{block 'layout_head_styles' append}
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
{/block}

{block 'layout_head' append}
    <script>
        ls.lang.load({json var = $aLangJs});
        ls.registry.set({json var = $aVarsJs});
    </script>
{/block}

{block 'layout_body'}
    <div class="p-docs-layout-container">
        <header class="p-docs-layout-header">
            <div class="p-docs-heading p-docs-layout-header-title">Документация</div>
            <div class="p-docs-heading p-docs-layout-header-subtitle">Компоненты</div>
        </header>

        <div class="p-docs-layout-wrapper">
            <div class="p-docs-layout-content">
                {block 'layout_content'}{/block}
            </div>

            <aside class="p-docs-layout-sidebar">
                {show_blocks group='sidebar'}
            </aside>
        </div>
    </div>
{/block}