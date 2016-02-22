var Vm = (function() {
    var body = avalon.define({
        $id: "vm_body",

    })

    var article = avalon.define({
        $id: "vm_article",
        articles: [1, 2, 3],
    })
    var category = avalon.define({
        $id: "vm_category",
        categories: [1, 2, 3],
    })


    avalon.scan();

    return {
        body: body,
        article: article,
        category: category,
    }
})()
