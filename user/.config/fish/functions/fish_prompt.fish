function fish_prompt
	set -g user_id (id -u)
	if test $user_id -lt 1000
		set -g user_color (set_color $fish_color_cwd_root)
	else
		set -g user_color (set_color $fish_color_cwd)
	end

	printf $user_color
	printf (basename (string replace $HOME '~' (pwd)))
	printf (set_color normal)' '
end
