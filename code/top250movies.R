install.packages("dplyr") 
install.packages("tidyr")
install.packages("ggplot2") 
#install.packages("spotifyr") 
install.packages("stats") 
install.packages("shiny") 
install.packages("syuzhet")
install.packages("lubridate") 
install.packages("knitr") 
library(dplyr) 
library(tidyr)
library(ggplot2) 
#library(spotifyr)
library(stats)
library(shiny) 
library(syuzhet) 
library(lubridate)
library(knitr) 

library(readr)
IMDB_Top_250_Movies <- read_csv("~/Downloads/IMDB Top 250 Movies.csv")

IM








#Sys.setenv(SPOTIFY_CLIENT_ID = "d7bf5087238d4244ab5f6091a1070ae1") 
#Sys.setenv(SPOTIFY_CLIENT_SECRET = "a1e8f0ea71274b28b204683433c28c05") 
#Sys.setenv(SPOTIFY_REDIRECT_URI = "http://localhost:1410/") 
#access_token <- get_spotify_access_token()
#access_token <- get_spotify_authorization_code(scope = c("playlist-read-private", "user-library-read"))


#get_my_top_artists_or_tracks(type = 'artists', 
                            # time_range = 'long_term', 
                             #limit = 5) %>% 
  #select(.data$name, .data$genres) %>% 
  #rowwise %>% 
  #mutate(genres = paste(.data$genres, collapse = ', ')) %>% 
  #ungroup %>% 







# Fetch audio features for valid tracks
#valid_ids <- tracks$id[!is.na(tracks$id)]
#audio_features <- get_track_audio_features(valid_ids)
#print(audio_features)


#playlist_tracks <- get_playlist_tracks("ggmochii") 

#test_playlist <- "7vT5Pf7VTyeWOojyh0N2hL" # Spotify's "Today's Top Hits"
#tracks <- get_playlist_tracks(test_playlist)
#print(tracks)

#my_playlists <- get_user_playlists("ggmochii") 

#discover_weekly <- my_playlists[my_playlists$name == "Discover Weekly", ]
#tracks_discover_weekly <- get_playlist_tracks(discover_weekly$id) 
#tracks_feature <- get_track_audio_features(tracks_discover_weekly$id)
#head(tracks_feature)

#playlist_id <- "7vT5Pf7VTyeWOojyh0N2hL"
#playlist_tracks <- get_playlist_tracks(playlist_id) 

#audio_features <- get_track_audio_features(playlist_tracks$id) 

#audio_features_variance <- audio_features %>%
 # summarize(across(c(valence, energy, danceability, acousticness), var, na.rm = TRUE))
#print(audio_features_variance) 



#get_my_top_artists_or_tracks(type = 'artists', 
                             #time_range = 'long_term', 
                             #limit = 5) %>% 
  #select(.data$name, .data$genres) %>% 
  #rowwise %>% 
 # mutate(genres = paste(.data$genres, collapse = ', ')) %>% 
  #ungroup %>% 
  

