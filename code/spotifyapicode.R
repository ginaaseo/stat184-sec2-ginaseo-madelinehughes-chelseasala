install.packages("dplyr") 
install.packages("tidyr")
install.packages("ggplot2") 
install.packages("spotifyr") 
install.packages("stats") 
install.packages("shiny") 
library(dplyr) 
library(tidyr)
library(ggplot2) 
library(spotifyr)
library(stats)
library(shiny) 

Sys.setenv(SPOTIFY_CLIENT_ID = "d7bf5087238d4244ab5f6091a1070ae1") 
Sys.setenv(SPOTIFY_CLIENT_SECRET = "a1e8f0ea71274b28b204683433c28c05") 

access_token <- get_spotify_access_token() 

my_playlists <- get_user_playlists() 

discover_weekly <- my_playlists[my_playlists$name == "Discover Weekly", ]
tracks_discover_weekly <- get_playlist_tracks(discover_weekly$id)
