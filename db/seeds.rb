# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
users = User.create([
    {
        username: 'WarhammerWeekly',
        password: 'slaanesh',
        name: 'Vince',
        email: 'warhammerweekly@gmail.com'
    },
    {
        username: 'AoSCoach',
        password: 'behemat',
        name: 'Anthony',
        email: 'aoscoach@yahoo.com'
    },
    {
        username: 'PaleDaemon',
        password: 'godtier',
        name: 'Richard',
        email: 'paledaemon@earthlink.net'
    }
])

posts = Post.create([
    {
        title: 'Spooky Boi',
        user_id: 3
    },
    {
        title: 'Daemon Daddy',
        user_id: 1
    },
    {
        title: 'Pink and Teal',
        user_id: 1
    },
    {
        title: 'Eye Freehand',
        user_id: 3
    },
    {
        title: 'Rock',
        user_id: 1
    },
    {
        title: 'NMM Gold',
        user_id: 3
    }
])

likes = Like.create([
    {
        user_id: 1,
        post_id: 1
    },
    {
        user_id: 2,
        post_id: 1
    },
    {
        user_id: 3,
        post_id: 2
    },
    {
        user_id: 1,
        post_id: 3
    },
    {
        user_id: 2,
        post_id: 4
    }
])

pictures = Picture.create([
    {
        image: 'https://preview.redd.it/zem7ftjb2bw61.jpg?width=960&crop=smart&auto=webp&s=5ab7b5e9b6de1c038b74bfeb6e6e85409ca7408b',
        caption: 'Just keep practicing',
        post_id: 1
    },
    {
        image: 'https://i.redd.it/5x6s6iwtbby51.jpg',
        caption: 'Remember to thin your paints',
        post_id: 2
    },
    {
        image: 'https://pbs.twimg.com/media/E0ZQm6uXIAIrNe9?format=jpg&name=4096x4096',
        caption: 'Do not drink paint water',
        post_id: 3
    },
    {
        image: 'https://pbs.twimg.com/media/EzRMTfVUUAQujpk?format=jpg&name=4096x4096',
        caption: 'Treat your brushes like the princes and princesses they are.',
        post_id: 4
    },
    {
        image: 'https://pbs.twimg.com/media/EyI_XBbXAAAZAfS?format=jpg&name=4096x4096',
        caption: 'Phew! Never doing that again',
        post_id: 5
    },
    {
        image: 'https://pbs.twimg.com/media/EynlwO-XIAgwvoz?format=jpg&name=large',
        caption: 'Just thought I would share. Enjoy!',
        post_id: 6
    }
])

comments = Comment.create([
    {
        content: 'Wow so cool!',
        post_id: 1
    },
    {
        content: 'Impressive.',
        post_id: 1
    },
    {
        content: 'Eh I have seen better.',
        post_id: 2
    },
    {
        content: 'Let me go pick my jaw off the floor...',
        post_id: 3
    }
])