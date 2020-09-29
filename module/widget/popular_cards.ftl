<#list posts.content?sort_by("visits")?reverse as post>
    <#if post_index==4><#break></#if>
    <div class="popular-thumb xs:mt-4">
        <a href="${post.fullPath!}">
            <#if post.thumbnail?? && post.thumbnail!=''>
                <img width="300" height="200" src="${post.thumbnail}" alt="${post.title}"/>
            <#elseif settings.card_random_cover!false>
                <#assign x = "${settings.card_random_cover_img_num?number}" />
                <#assign thumbnailIndex ="${post_index % (x?number)}"/>
                <img width="300" height="200" src="${blog_url!}/thumbnail/thumbnail-${thumbnailIndex?number?abs}.${settings.card_random_cover_img_suffix}" alt="${post.title}"/>
            </#if>
        </a>

        <div class="popular-content popular-middle">
            <div class="entry-content">
                <h2 class="entry-title"><a href="${post.fullPath!}">${post.title}</a>
                </h2>
                <span class="entry-date popular-meta">${post.createTime?string("yyyy年MM月dd日")}</span>
                <a href="${post.fullPath!}"><i class="iconfont icon-yuedu"></i></a>
            </div>
        </div>
    </div>
</#list>
