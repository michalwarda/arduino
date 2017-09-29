if (annyang) {
  console.log('dupa');
  // Let's define our first command. First the text we expect, and then the function it should call
  var commands = {
    'on': function() {
      window.location.replace("/?on=true");
    },
    'off': function() {
      window.location.replace("/?on=false");
    }
  };

  // Add our commands to annyang
  annyang.addCommands(commands);

  // Start listening. You can call this here, or attach this call to an event, button, etc.
  annyang.start();
}
