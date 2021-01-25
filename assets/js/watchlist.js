document.querySelector("#watchlist").addEventListener('click', addToWatchlist);

function addToWatchlist(event) {
    event.preventDefault();

// Get the link object you click in the DOM
    let watchlistLink = event.currentTarget;
    let link = watchlistLink.href;
// Send an HTTP request with fetch to the URI defined in the href
    fetch(link)
        // Extract the JSON from the response
        .then(res => res.json())
        // Then update the icon
        .then(function (res) {
            let watchlistIcon = watchlistLink.firstElementChild;
            if (res.isInWatchlist) {
                watchlistIcon.classList.remove('far'); // Remove the .far (empty heart) from classes in <i> element
                watchlistIcon.classList.add('fas'); // Add the .fas (full heart) from classes in <i> element
            } else {
                watchlistIcon.classList.remove('fas'); // Remove the .fas (full heart) from classes in <i> element
                watchlistIcon.classList.add('far'); // Add the .far (empty heart) from classes in <i> element
            }
        });
}
