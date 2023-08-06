
/// @desc scrStringWrap(string,width,fyrkant,split)
/// @arg string is the text to word wrap, string
/// @arg width is maximum pixel width before a line break, real
/// @arg fyrkant skriv bara in en #
/// @arg split words, false


//  Returns a given string, word wrapped to a pixel width,
//  with line break characters inserted between words.
//  Uses the currently defined font to determine text width.
//
function scrStringWrap(argument0,argument1,argument2,argument3){
    var pos_space, pos_current, text_current, text_output;
    pos_space = -1;
    pos_current = 1;
    text_current = argument0;
    if (is_real(argument2)) argument2 = "\n";
    text_output = "";
    while (string_length(text_current) >= pos_current) {
        if (string_width(string_copy(text_current,1,pos_current)) > argument1) {
            //if there is a space in this line then we can break there
            if (pos_space != -1) {
                text_output += string_copy(text_current,1,pos_space) + string(argument2);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
                pos_current = 1;
                pos_space = -1;
            } else if (argument3) {
                //if not, we can force line breaks
                text_output += string_copy(text_current,1,pos_current-1) + string(argument2);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_current,string_length(text_current)-(pos_current-1));
                pos_current = 1;
                pos_space = -1;
            }
        }
        if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
        pos_current += 1;
    }
    if (string_length(text_current) > 0) text_output += text_current;
    return text_output;
}