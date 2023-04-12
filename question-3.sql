-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT tracks.Name AS 'Track Name', artists.Name AS 'Artist Name', invoice_items.*
FROM tracks 
JOIN invoice_items
	ON tracks.TrackId = invoice_items.TrackId
JOIN albums
	ON tracks.AlbumId = albums.AlbumId
JOIN artists
	ON albums.ArtistId = artists.ArtistId;