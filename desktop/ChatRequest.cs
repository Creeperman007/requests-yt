﻿using System;
using System.Net;
using Newtonsoft.Json.Linq;

namespace request_yt
{
    class ChatRequest
    {
        public static string[] GetChat(string chid, string api)
        {
            try
            {
                WebClient n = new WebClient();
                var json = n.DownloadString("https://www.googleapis.com/youtube/v3/liveChat/messages?liveChatId=" + chid + "&part=snippet&key=" + api);
                string valueOriginal = Convert.ToString(json);
                JObject data = JObject.Parse(valueOriginal);
                int lastMsg = Convert.ToInt32(data["pageInfo"]["totalResults"]) - 1;
                if (lastMsg >= 0)
                {
                    string[] request = new string[2];
                    request[0] = AuthorName(Convert.ToString(data["items"][lastMsg]["snippet"]["authorChannelId"]), api);
                    request[1] = Convert.ToString(data["items"][lastMsg]["snippet"]["textMessageDetails"]["messageText"]);
                    return request;
                }
                else
                {
                    return new string[2] { "", "" };
                }
            }
            catch
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("{0} [ERROR] Cannot get chat info.", DateTime.Now.ToString("H:mm:ss"));
                Console.ResetColor();
                return new string[2] { "", "" };
            }
        }
        private static string AuthorName(string id, string api)
        {
            string name = UserCache.ReadCache(id);
            if (name == "")
            {
                try
                {
                    WebClient n = new WebClient();
                    var json = n.DownloadString("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&type=channel&channelId=" + id + "&key=" + api);
                    string valueOriginal = Convert.ToString(json);
                    JObject data = JObject.Parse(valueOriginal);
                    string channelTitle = Convert.ToString(data["items"][0]["snippet"]["channelTitle"]);
                    try
                    {
                        UserCache.InsertName(id, channelTitle);
                    }
                    catch { }
                    return channelTitle;
                }
                catch
                {
                    return "[Unknown user]";
                }
            }
            else
            {
                return name;
            }
        }
    }
}
