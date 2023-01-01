# Manticore Search CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/manticore-search"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Manticore Search server with CI/CD on Elestio

<img src="manticore-search.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

## Curl examples

### create index

        curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/cli -d "create table products(title text, price float) morphology='stem_en'"

### Add documents

    curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/insert  -d '
    {
        "index":"products",
        "doc":
        {
            "title" : "Crossbody Bag with Tassel",
            "price" : 19.85
        }
    }'

    curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/insert  -d '
    {
        "index":"products",
        "doc":
        {
            "title" : "microfiber sheet set",
            "price" : 19.99
        }
    }'

    curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/insert  -d '
    {
        "index":"products",
        "doc":
        {
            "title" : "Pet Hair Remover Glove",
            "price" : 7.99
        }
    }'

### search

    curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/search  -d '
    {
        "index": "products",
        "query": { "match": { "title": "remove hair" } },
        "highlight":
        {
            "fields": ["title"]
        }
    }'

### update

    curl -sX POST https://root:[ADMIN_PASSWORD]@[CI_CD_DOMAIN]/update  -d '
    {
        "index": "products",
        "id": 1513686608316989452,
        "doc":
        {
            "price": 18.5
        }
    }'

For more informations, you can go to the manual of Manticore Search here <a target="_blank" href="https://manual.manticoresearch.com/Quick_start_guide#Search">Doc Manticore Search</a>
