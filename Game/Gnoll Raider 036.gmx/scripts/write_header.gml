if file_exists('header_' + string(argument0) + '.txt')
    {
    file_delete('header_' + string(argument0) + '.txt')
    }
header = file_text_open_write('header_' + string(argument0) + '.txt')

file_text_write_string(header,pname[crnt_pnum])
file_text_writeln(header)
file_text_write_real(header,mu_spr[crnt_pnum])
file_text_writeln(header)
file_text_write_real(header,mu_lvl[crnt_pnum])
file_text_writeln(header)
file_text_write_real(header,gold)
file_text_writeln(header)

file_text_close(header)
/*
writestory stuff
