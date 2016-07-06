# Should divide the given text into lines using newline characters
# It should fit as many words into each line as possible without exceeding
# the given width or splitting any words between two lines.

format = (text, width) ->
    words = text.split ' '
    lines = []
    lastLine = words[0]
    for i in [1 ... words.length]
        word = words[i]
        if (lastLine + ' ' + word).length > width
            lines.push lastLine
            lastLine = word
        else
            lastLine += ' ' + word
    lines.push lastLine
    lines.join '\n'

# Multiline string is allowed in CoffeeScript, yeahh
text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec consectet
  ur risus. Cras vel urna a tellus dapibus consequat. Duis bibendum tincidunt viverra. Ph
  asellus dictum efficitur sem quis porttitor. Mauris luctus auctor diam id ultrices. Pra
  esent laoreet in enim ut placerat. Praesent a facilisis turpis.';

# Test
console.log format text, 30

###
Lorem ipsum dolor sit amet,        
consectetur adipiscing elit.       
Aliquam nec consectet ur           
risus. Cras vel urna a tellus      
dapibus consequat. Duis            
bibendum tincidunt viverra. Ph     
asellus dictum efficitur sem       
quis porttitor. Mauris luctus      
auctor diam id ultrices. Pra       
esent laoreet in enim ut           
placerat. Praesent a facilisis     
turpis.
###                          