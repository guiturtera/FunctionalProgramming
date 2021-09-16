# STATEMENTS. Every line of code has a return!
defmodule Say do
    def hello do
        IO.puts(IO.puts("Hello World")) # also has a return
        IO.puts("Hello World") # also has a return ':ok'
    end
end