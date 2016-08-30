select A.Title as "Album Title", MT.Name as "Media Type", G.Name as "Genre Name" from track as T

join Album as A on T.AlbumId == A.AlbumId

join MediaType as MT on T.MediaTypeId == MT.MediaTypeId

join Genre as G on T.GenreId == G.GenreId order by 1