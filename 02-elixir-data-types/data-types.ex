defmodule Types do
    def integers(a, b) do
        IO.puts("Division -> #{div(a, b)}")
        IO.puts("Remainder -> #{rem(a, b)}")
    end
    def floats(a) do
        IO.puts("Truncate -> #{trunc(a)}")
        IO.puts("Round -> #{round(a)}")
    end
    def conversions do
        IO.puts("Binary -> #{0b001}")
        IO.puts("Hexadecimal -> #{0xaa}")
        IO.puts("Octal -> #{0o77}")
    end
    def booleans do
        IO.puts("2 >= 2 -> #{2 > 2}")
        IO.puts("5 <= 5 -> #{5 < 5}")
        IO.puts("2 >= 3 -> #{2 >= 2}")
        IO.puts("5 <= 10 -> #{5 <= 5}")
        IO.puts("4 == 5 -> #{4 == 5}")
        IO.puts("!true -> #{!true}")
        IO.puts("true || false -> #{true || false}")
        IO.puts("not true -> #{not true}")
        IO.puts("true and false -> #{true and false}")
        IO.puts("true && false -> #{true && false}")
    end
    def built_in do # ALL BUILT INS ARE FROM `Kernel` module
        IO.puts("is_boolean(false) -> #{is_boolean(false)}")
        IO.puts("is_atom(trues) -> #{is_atom(true)}")
        IO.puts("is_integer(1.1) -> #{is_integer(1.1)}")
        IO.puts("is_float(1) -> #{is_float(1)}")
        IO.puts("is_number(1.2) -> #{is_number(1.2)}")
    end
    def atoms do # true and false are also atoms
        :some_value
        IO.puts(:some_value)
    end
    def strings do
        IO.puts("Hello world\nHello World") # scapes only in IO.puts
        IO.puts("is_binary \"hello world\" -> #{is_binary "hello world"}")
        IO.puts("byte_size \"some word\" -> #{byte_size "some word"}")
        IO.puts("byte_size \"some wórd\" -> #{byte_size "some wórd"}")
        IO.puts("String.length \"some wórd\" -> #{String.length "some wórd"}")
        IO.puts("\"Hello\" <> \"World\" -> #{"Hello" <> "World"}")
        IO.puts("?a -> #{?a}") #codepoint
        IO.puts("<<66, 105, 110, 97, 114, 121, 32, 102, 111, 114, 109, 97, 116, 0>> -> #{<<66, 105, 110, 97, 114, 121, 32, 102, 111, 114, 109, 97, 116, 0>>}") #binary
       
        # CHARLIST = ''
        # STRING = ""
        IO.puts("\'world\' #{'world'}")
        IO.puts("\"world\" #{"world"}")
        IO.puts("to_charlist \"world\" #{to_charlist "world"}")
        IO.puts("to_string \'world\' #{to_string 'world'}")
        "Binary format" <> <<0>> # not in IO.puts because it converts automatically to string 
    end
    def lists do
        # multivalued list
        # CHAINED LISTS
        # tl wipes the list
        # hd gets the first element (HEAD)
        list1 = [:true, "hello world"]
        list2 = ["hello world", 2]
        list3 = list1 ++ list2
        list4 = list1 -- list2
        IO.puts(hd list3)
        IO.puts(tl list3)
    end 
end