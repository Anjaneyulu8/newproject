import { LightningElement } from 'lwc';

export default class AccountListSearch extends LightningElement {
    va="";
    method(event){
        this.va=event.target.value;

    }
    a=["anji","Karthik","Chetan","Ganesh"];



myquestions=[{
    id:"Question-1",
    Question:"where are u From?",
    answers:{
        a:"India",
        b:"China",
        c:"Aus"
    },
correctAnswer:"a"    
}]
}