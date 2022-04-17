create database if not exists tweetsdb;
use tweetsdb;
create external table if not exists PlayersTweets (
    id bigint,
    conversation_id bigint,
    created_at string,
    `date` string,
    time string,
    timezone int,
    user_id bigint,
    username string,
    name string,
    place string,
    tweet string,
    language string,
    mentions string,
    urls string,
    photos string,
    replies_count int,
    retweets_count int,
    likes_count int,
    hashtags string,
    cashtags string,
    link string,
    retweet string,
    quote_url string,
    video int,
    thumbnail string,
    near string,
    geo string,
    source string,
    user_rt_id string,
    user_rt string,
    retweet_id string,
    reply_to string,
    retweet_date string,
    translate string,
    trans_src string,
    trans_dest string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/tweetsdb.db/PLayersTweets';