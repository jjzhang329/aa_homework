export const fetchSearchGiphys = searchTerm => (
    $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=87Yxok6N9aU2CplNPTD0wwK3orOIQVDu&limit=2`
    })
);

