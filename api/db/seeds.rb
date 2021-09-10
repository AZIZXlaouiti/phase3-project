Document.delete_all

puts 'begin seeding...'

things = {
    "blocks": [
        {
            "key": "e47lb",
            "text": "hey4313876",
            "type": "unstyled",
            "depth": 0,
            "inlineStyleRanges": [],
            "entityRanges": [],
            "data": {}
        }
    ],
    "entityMap": {}
}

Document.create(name:"todo",date:"2021-08-07",content:things)
Document.create(name:"homework",date:"2021-08-01",content:things)
Document.create(name:"collaboration work",date:"2021-09-11",content:things)

puts 'finished seeding...'