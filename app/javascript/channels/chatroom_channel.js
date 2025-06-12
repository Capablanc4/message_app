import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#message_container').append(data.mod_message)
    // Scroll automático al último mensaje
    const chatContent = document.querySelector('.chatbox .content');
    if (chatContent) {
      chatContent.scrollTop = chatContent.scrollHeight;
    }
  }
});
