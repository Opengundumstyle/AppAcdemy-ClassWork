const FollowToggle = require("./follow_toggle.js");

window.FollowToggle = FollowToggle;

  $(function (){ 
    $(".follow-toggle").each((i, button) => {
    console.log(button);
     new FollowToggle(button)})
})


