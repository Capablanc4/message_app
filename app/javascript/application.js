// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"

//limpiar formulario cuando se envia exitosamente
$(document).on('ajax:success', '.ui.reply.form', function () {
    console.log("Ajax success triggered!");
    this.reset(); // Limpia todo el formulario
});

$(document).on('turbo:load', function () {
    $('.ui.dropdown')
        .dropdown();
    // Scroll inicial al cargar la página
    const chatContent = document.querySelector('.chatbox .content');
    if (chatContent) {
        chatContent.scrollTop = chatContent.scrollHeight;
    }
})



