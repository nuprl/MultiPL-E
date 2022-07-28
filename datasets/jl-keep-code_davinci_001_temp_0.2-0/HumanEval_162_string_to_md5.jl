"""
    Given a string 'text', return its md5 hash equivalent string.
    If 'text' is an empty string, return None.

    >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    """
function string_to_md5(text::String)::Union{String, Nothing} 
    if isempty(text)
        return nothing
    end
    return md5(text)
end

using Test

@testset begin

candidate = string_to_md5;
	@test(candidate("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62")
	@test(candidate("") == nothing)
	@test(candidate("A B C") == "0ef78513b0cb8cef12743f5aeb35f888")
	@test(candidate("password") == "5f4dcc3b5aa765d61d8327deb882cf99")
end
