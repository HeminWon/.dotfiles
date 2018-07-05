refreshFrequency: 60000

#Link Your File Here
todolistfile = '/Users/heminwon/Desktop/todo.txt'


#other stuff

command: "cat #{todolistfile} |awk 'BEGIN {print \"<ul>\"} /^/ {print \"<li>\"substr($0,1)\"</li>\"} /^[-]/ {print \"<li class=\\\"completed\\\">\"substr($0,2)\"</li>\"} END {print \"</ul>\"}'"


style: """
  top: 10px
  left: 10px
  color: #ddd
  font-family: Futura
  border-radius: 12px
  background: rgba(#000, 0.1)

  width: 320px
  border: 2px solid rgba(#fff, 0.65)
  -webkit-font-smoothing: antialiased
  -webkit-border-smoothing: antialiased;
  -webkit-backdrop-filter: blur(3px)

  h
    display: block
    text-align: center
    font-weight: bolder
    font-size: 35px
    background: rgba(#000, 0.5)
    border-radius: 12px,12px,0,0
    border-bottom: 3px solid rgba(#fff, 0.5)



  div
    display: block
    color: rgba(255,255,255,100)
    position: relative
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 19px
    padding-left: 15px


  ul

    padding-left: 20px
    padding-right: 20px
    margin: 5
    list-style-type: bullet
    border-top-right-radius: 15px
    position: relative
    text-overflow: ellipsis
    -webkit-font-smoothing: antialiased;

  .completed
    color: #888
    font-weight: regular
    text-decoration:line-through


"""


render: -> """
  <h>Homework</h>

  <div class='todolist'>
</div>
"""
afterRender: (domEl) ->
      $(domEl).on 'click', => @run "open #{todolistfile}"




update: (output, domEl) ->
  $(domEl).find('.todolist').html(output)
