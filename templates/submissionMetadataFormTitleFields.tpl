{**
 * templates/submission/submissionMetadataFormTitleFields.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Submission's metadata form title fields. To be included in any form that wants to handle
 * submission metadata.
 *
 * @deprecated 3.4
 *}

<script src="{$upFrontendPluginJavaScriptURL}/Handler.js?v=1"></script>

{if $formParams.submissionVersion && ($formParams.submissionVersion < $currentSubmissionVersion)}
  {assign var=readOnly value=1}
{else}
	{assign var=readOnly value=0}
{/if}
{fbvElement type="hidden" name="submissionVersion" id="submissionVersion" value=$formParams.submissionVersion}
<div class="pkp_helpers_clear">
	{fbvFormSection for="title" title="common.title" required=true}
		{fbvElement type="textarea" multilingual=true name="title" id="title" value=$title readonly=$readOnly maxlength="255" rows="5" rich=true class="titleRichContent" required=true}
	{/fbvFormSection}
</div>

<br>
{fbvFormSection title="common.abstract" for="abstract" required=$abstractsRequired}
	{if $wordCount}
		<p class="pkp_help">{translate key="submission.abstract.wordCount.description" wordCount=$wordCount}
	{/if}
	{fbvElement type="textarea" multilingual=true name="abstract" id="abstract" value=$abstract rich="extended" readonly=$readOnly wordCount=$wordCount}
{/fbvFormSection}
