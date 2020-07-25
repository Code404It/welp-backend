# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

kids = Kid.create([
    {
    name: 'Imani',
    image_url:'http://res.freestockphotos.biz/pictures/5/5016-portrait-of-a-beautiful-african-american-teen-girl-posing-by-a-lake-pv.jpg'
    },
    { 
    name: 'Kenya',
    image_url:'https://image1.masterfile.com/getImage/NjczLTAyMTM3NzY3ZW4uMDAwMDAwMDA=AHzaBj/673-02137767en_Masterfile.jpg'
    },
    {
    name: 'Alex',
    image_url:'https://s3.envato.com/files/261199589/MON1197171.jpg'
    },
    {
    name: 'Jaiden',
    image_url:'https://t3.ftcdn.net/jpg/02/20/97/88/240_F_220978839_k7mTkyxe7DZshkGx24X8FKhYXilluIrV.jpg'
    },
    {
    name: 'Shawn',
    image_url:'https://t3.ftcdn.net/jpg/00/07/35/94/240_F_7359462_sCFJqo0Y2HqgTiccQ6uH1K6Re8QcrtmZ.jpg'
    }
])

reviews = Review.create([
    {
    title: 'Took Out The Trash',
    description: 'Did so without being told.', 
    score: 5,
    kid: kids.first
    },
    {
    title: 'Came Home Late',
    description: 'Two hours past curfew.', 
    score: 1,
    kid: kids.first
    }
])
