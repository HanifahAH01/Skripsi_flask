document.addEventListener("DOMContentLoaded", function() {
    const wrapper = document.getElementById('wrapper');
    const toSignUp = document.getElementById('to-sign-up');
    const toSignIn = document.getElementById('to-sign-in');

    toSignUp.addEventListener('click', function(event) {
        event.preventDefault();
        wrapper.classList.add('active');
    });

    toSignIn.addEventListener('click', function(event) {
        event.preventDefault();
        wrapper.classList.remove('active');
    });
});
