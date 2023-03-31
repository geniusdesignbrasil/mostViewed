{if $mostReadPosition}
	<script>
		document.addEventListener("DOMContentLoaded", function () {
			let mv_div = document.querySelector('.most-viewed');
			mv_div.parentElement.append(mv_div);
			mv_div.style.display = 'block';
		});
	</script>
	<style>
		.most-viewed {
			display: none;
		}
	</style>
{/if}
<div class="pkp_block most-viewed obj_article_summary">
	<h3 class="most-viewed-headline title">{if $mostReadHeadline[$currentLocale]}{$mostReadHeadline[$currentLocale]}{else}{translate key="plugins.generic.most.viewed.headline"}{/if}</h3>
	{if $mostReadArticles && sizeof($mostReadArticles)>0}
		<ul class="most-viewed-list">
		{foreach from=$mostReadArticles item="article"}
			<li class="most-viewed-content">
				<h4 class="most-viewed-title">
					<a href={url page="article" op="view" path=$article['articleId']}>
						{$article['articleTitle']|strip_unsafe_html}
						{if $article['articleSubtitle']}
							{$article['articleSubtitle']|strip_unsafe_html}
						{/if}
					</a>
				</h4>
				<p class="most-viewed-info">
					<span class="most-viewed-author">{$article['articleAuthor']|strip_unsafe_html}</span><br/>
					<span class="badge"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;{$article['metric']|strip_unsafe_html}</span>
				</p>
			</li>
		{/foreach}
		</ul>
	{/if}
</div>

