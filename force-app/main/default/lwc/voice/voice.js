import { LightningElement, track } from 'lwc';

export default class VoiceRecognitionToText extends LightningElement {
    @track isRecording = false;
    @track transcription = '';
    mediaRecorder;
    chunks = [];

    startRecording() {
        this.isRecording = true;
        this.mediaRecorder = new MediaRecorder(navigator.mediaDevices.getUserMedia({ audio: true }));
        this.mediaRecorder.start();
        this.mediaRecorder.ondataavailable = (e) => {
            this.chunks.push(e.data);
        };
    }

    stopRecording() {
        this.isRecording = false;
        this.mediaRecorder.stop();
        const audioBlob = new Blob(this.chunks);
        this.chunks = [];
        const reader = new FileReader();
        reader.readAsDataURL(audioBlob);
        reader.onloadend = () => {
            const result = reader.result;
            this.transcription = result;
        };
    }
}