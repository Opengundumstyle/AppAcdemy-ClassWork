class FollowToggle{
  constructor(el) {
    this.$el = $(el)
    this.userId = this.$el.data("user-id")
    this.followState = this.$el.data("initial-follow-state")
    this.render()
    this.$el.on('click',this.handleClick.bind(this))
  }
 
    
     
  handleClick(e) {
       console.log(this)
       console.log(this.userId)
        e.preventDefault();
        if (this.followState === "unfollowed"){
           return $.ajax({
            method: 'POST',
            url: `/users/${this.userId}/follow`,

              dataType: 'JSON'
          }).then(()=> {this.followState = 'followed' ; this.render()});
      }
      else {
       return  $.ajax({
          method: 'DELETE',
          url: `/users/${this.userId}/follow`,
            dataType: 'JSON'
        }).then(()=> {this.followState = 'unfollowed' ; this.render()} );
      }
    }
   


    render() {
      if(this.followState === "unfollowed"){
        this.$el.html("Follow!")
      }else
       this.$el.html("Unfollow!")
    }
}


module.exports = FollowToggle; 