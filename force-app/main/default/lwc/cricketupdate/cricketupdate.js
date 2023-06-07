import { LightningElement } from 'lwc';

const options = {
    method: 'GET',
    headers: {
        'X-RapidAPI-Key': '9240658388msh4fbc3e84fd45ab2p131895jsn065f04d9c7f4',
        'X-RapidAPI-Host': 'unofficial-cricbuzz.p.rapidapi.com'
    }
};

export default class Cricketupdate extends LightningElement {
     liveScoreData;
    connectedCallback() {
        fetch('https://unofficial-cricbuzz.p.rapidapi.com/matches/get-scorecard?matchId=40381', options)
            .then(response =>
            { 
            this.liveScoreData=response.json()
            console.log('76',this.liveScoreData)
            })
            .catch(err => console.error(err));
    }
    get matchType() {
  return this.liveScoreData.typeMatches[0].matchType;
}

    
}