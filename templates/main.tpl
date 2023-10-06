{**
 * templates/index.tpl
 *
 * Copyright (c) 2013-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file LICENSE.
 *
 * Template for one-page submission form
 *}
{extends file="layouts/backend.tpl"}

{block name="page"}
    <h1 class="app__pageHeading">
        {$pageTitle}
    </h1>

    <div id="quickSubmitPlugin" class="app__contentPanel">
        <p>{translate key="plugins.importexport.quickSubmit.descriptionLong"}</p>
        <pkp-button element="a" href="{plugin_url}/addSubmit">
            {translate key="plugins.importexport.quickSubmit.add"}
        </pkp-button>
    </div>
{/block}
