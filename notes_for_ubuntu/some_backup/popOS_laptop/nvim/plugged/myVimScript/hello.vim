func! Hello()
py3 << EOF
import vim
import os
"cur_pos = vim.current.window.cursor[0]"
"print(cur_pos)"
"file_name = vim.current.buffer.name"
"print(file_name)"

file_path = os.path.join(os.getcwd(), 'figures')
print(file_path)


EOF
endfunc 
command! HH call Hello()



function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction
command! JJ call s:get_visual_selection()
