var findProduct = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: baseurl+'product/search?q=%QUERY',
    remote: {
        url: baseurl+'product/search?q=%QUERY',
        wildcard: '%QUERY'
    }
});

$(function(){
    $('#psearch.typeahead').typeahead(null, {
        name: 'best-pictures',
        display: 'value',
        highlight: true,
        source: findProduct,
        limit:9
    });
});
$("#searchBtn").on({
    click:function() {
        var query = $("#psearch").val();
        if (query=="") {
            alert("请输入要查询的产品名称!");
            return ;
        }
        $("#q").attr("value", query);
        $("#searchForm").submit();
    }
});
