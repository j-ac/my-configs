if (has('gui_running')) "this color scheme is broken in TUI vim?
	:colorscheme strawberry-light
	:autocmd InsertEnter * highlight Normal guibg=#FFF0F7 "The default strawberry-light background color
	:autocmd InsertLeave * highlight Normal guibg=#FCB8D8 "A slightly darker version of the strawberry-light default
endif
