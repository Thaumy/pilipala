﻿open System
open ws.server
open ws.post.getPost
open ws.post.getAllPostId
open ws.post.getPrevPost
open ws.post.getNextPost

wsServer.AddWebSocketService<getPost>("/get_post")
wsServer.AddWebSocketService<getAllPostId>("/get_all_post_id")
wsServer.AddWebSocketService<getPrevPost>("/get_prev_post")
wsServer.AddWebSocketService<getNextPost>("/get_next_post")

wsServer.Start()
Console.ReadKey() |> ignore
wsServer.Stop()
