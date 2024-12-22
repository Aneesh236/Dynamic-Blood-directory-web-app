const btn = document.querySelector('.talk');
const content = document.querySelector('.content');
const bloodGroups = ['A+', 'B+', 'AB+'];

const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
const recognition = new SpeechRecognition();

recognition.onstart = function () {
    console.log('Voice recognition activated. Speak into the microphone.');
};

recognition.onresult = function (event) {
    const current = event.resultIndex;
    const transcript = event.results[current][0].transcript.trim().toLowerCase();
    // content.textContent = transcript;
    readOutLoud(transcript);
};

btn.addEventListener('click', () => {
    recognition.start();
});

function readOutLoud(message) {
    const speech = new SpeechSynthesisUtterance();

    // Normalize and match input
    const normalizedBloodGroups = {
        "a+": "A positive",
        "b+": "B positive",
        "ab+": "AB positive",
    };

    let matchedGroup = null;

    for (let group in normalizedBloodGroups) {
        if (message.includes(group) || message.includes(normalizedBloodGroups[group].toLowerCase())) {
            matchedGroup = normalizedBloodGroups[group];
            break;
        }
    }

    if (matchedGroup) {
        speech.text = `You mentioned the blood group ${matchedGroup}.`;
    } else {
        speech.text = "I didn't recognize any blood group in your message.";
    }

    speech.volume = 1;
    speech.rate = 1;
    speech.pitch = 1;

    window.speechSynthesis.speak(speech);
}
