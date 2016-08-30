select P.Name as "Playlist Name", count(PT.playlistId) as "Track Count" from PlaylistTrack as PT

join playlist as P on PT.PlaylistId == P.PlaylistId

group By PT.PlaylistId;