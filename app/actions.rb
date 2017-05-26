def humanized_time_ago(minute_num)
    if minute_num >= 60
        "#{minute_num / 60} hours ago"
    else 
        "#{minute_num} minutes ago"
    end
end

get '/' do
        post = {
    username: "WannaCry_2017",
    avatar_url: "https://www.nbs-system.com/wp-content/uploads/white-hats.png",
    photo_url: "https://www.troyhunt.com/content/images/2017/05/WannaCrypt.jpg",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{ 
        username: "WannaCry_2017",
        text:  "Just got Hacked over the weekend"
        }]
    }
    post = {
    username: "ABT_2017",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAJTAAAAJGMzOGVhMmY0LWUwNzUtNGI3YS05MGU0LWE3NDU4YWI2NTI4ZQ.png",
    photo_url: "https://www.absolute.com/-/media/Commercial/images/icons/linear/billion-endpoints.png?la=en&hash=FC47FEACEFCE6CB3501CFCF0C7A7E57B7AFB5B27",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{ 
        username: "ABT_2017",
        text:  "You should of had Absolute"
        }]
    }
end