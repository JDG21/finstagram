def humanized_time_ago(minute_num)
    if minute_num >= 60
        "#{minute_num / 60}h"
    else 
        "#{minute_num}m"
    end
end

get '/' do
        @post_WannaCry = {
    username: "WannaCry_2017",
    avatar_url: "https://www.nbs-system.com/wp-content/uploads/white-hats.png",
    photo_url: "https://www.troyhunt.com/content/images/2017/05/WannaCrypt.jpg",
    humanized_time_ago: humanized_time_ago(1),
    like_count: 0,
    comment_count: 1,
    comments: [{ 
        username: "WannaCry_2017",
        text:  "Just got Hacked over the weekend"
        }]
    }
        @post_ABT = {
    username: "ABT_2017",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAJTAAAAJGMzOGVhMmY0LWUwNzUtNGI3YS05MGU0LWE3NDU4YWI2NTI4ZQ.png",
    photo_url: "https://www.absolute.com/-/media/Commercial/images/icons/linear/billion-endpoints.png?la=en&hash=FC47FEACEFCE6CB3501CFCF0C7A7E57B7AFB5B27",
    humanized_time_ago: humanized_time_ago(120),
    like_count: 0,
    comment_count: 1,
    comments: [{ 
        username: "ABT_2017",
        text:  "You should of had Absolute"
        }]
    }
        @post_Sophos = {
    username: "Sophos_2017",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAXlAAAAJDA5ZTQzN2YxLTFhNWItNDQzYy04OWY2LWZiMzZmMDQ0OWNhMg.png",
    photo_url: "http://www.ft.com/fastft/files/2017/05/sophos-attack.png",
    humanized_time_ago: humanized_time_ago(180),
    like_count: 0,
    comment_count: 2,
    comments: [{ 
        username: "Sophos_2017",
        text:  "Stocks going up, weehoooo",
        }]
    }
    @posts = [@post_WannaCry, @post_ABT, @post_Sophos]
    
    erb(:index)
end