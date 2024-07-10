// Main application object
const CharacterCreator = {
    // Cache DOM elements
    elements: {
        body: document.body,
        form: document.getElementById('characterForm'),
        firstName: document.getElementById('firstName'),
        lastName: document.getElementById('lastName'),
        age: document.getElementById('age'),
        background: document.getElementById('background'),
    },

    // Initialize the application
    init() {
        this.addEventListeners();
    },

    // Add event listeners
    addEventListeners() {
        window.addEventListener('message', this.handleMessage.bind(this));
        this.elements.form.addEventListener('submit', this.handleSubmit.bind(this));
        document.addEventListener('keydown', this.handleKeyDown.bind(this));
    },

    // Handle incoming NUI messages
    handleMessage(event) {
        const { type } = event.data;
        if (type === "openCharacterCreator") {
            this.showUI();
        }
    },

    // Handle form submission
    handleSubmit(e) {
        e.preventDefault();
        const characterData = this.gatherFormData();
        this.sendDataToLua(characterData);
        this.closeUI();
    },

    // Handle keydown events
    handleKeyDown(event) {
        if (event.key === "Escape") {
            this.closeUI();
        }
    },

    // Gather form data
    gatherFormData() {
        return {
            firstName: this.elements.firstName.value,
            lastName: this.elements.lastName.value,
            age: this.elements.age.value,
            background: this.elements.background.value
        };
    },

    // Send character data back to Lua
    sendDataToLua(data) {
        fetch(`https://${GetParentResourceName()}/characterCreated`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify(data)
        });
    },

    // Show the UI
    showUI() {
        this.elements.body.classList.remove('hidden');
    },

    // Close the UI
    closeUI() {
        this.elements.body.classList.add('hidden');
        fetch(`https://${GetParentResourceName()}/closeUI`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({})
        });
    }
};

// Initialize the application when the DOM is fully loaded
document.addEventListener('DOMContentLoaded', () => {
    CharacterCreator.init();
});