-module(afile_client).
-export([ls/1, get_file/2, put_file/3, unsupported/2]).

ls(Server) ->
   Server ! {self(), list_dir},
   receive
      {Server, FileList} ->
         FileList
   end.

get_file(Server, File) ->
   Server ! {self(), {get_file, File}},
   receive
      {Server, Content} ->
         Content
   end.

put_file(Server, FileName, Bytes) ->
   Server ! {self(), {put_file, FileName, Bytes}},
   receive
      {Server, Status} ->
         Status
   end.

unsupported(Server, FileName) ->
   Server ! {self(), {new_thing, old_thing}},
   receive
      {Server, Status} ->
         Status
   end.
