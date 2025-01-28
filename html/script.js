const container = document.getElementById('tweets-container');

window.addEventListener('message', function(event) {
    if (event.data.type === 'twitter') {
        const tweet = document.createElement('div');
        tweet.className = 'tweet';
        tweet.innerHTML = `<strong>@${event.data.playerName}</strong>: ${event.data.message}`;
        container.appendChild(tweet);

        // Verwijder de tweet na 5 seconden
        setTimeout(() => {
            tweet.remove();
        }, 5000);
    }
});
