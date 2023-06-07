import { LightningElement, track } from 'lwc';

export default class youtube extends LightningElement {
    @track videos = [];
    @track error;

    connectedCallback() {
        // Make an API call to the YouTube API to fetch the data
        fetch('https://youtube-v3-alternative.p.rapidapi.com/search', {
            method: 'GET',
            headers: {
                'X-RapidAPI-Host': 'youtube-v3-alternative.p.rapidapi.com',
                'X-RapidAPI-Key': 'AIzaSyBPS3SNSxKgJIpaWUwcR0knshNewRWIF3M'
            }
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error(response.statusText);
                }
                return response.json();
            })
            .then(data => {
                this.videos = data.items;
                console.log(th)
            })
            .catch(error => {
                this.error = error.message;
            });
    }

    get hasVideos() {
        return this.videos.length > 0;
    }

    get hasError() {
        return this.error !== undefined;
    }
}