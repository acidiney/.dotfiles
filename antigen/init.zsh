#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue Jun  4 14:42:04 WAT 2024
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/acidineydias/.config/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-completions /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-autosuggestions /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-history-substring-search /Users/acidineydias/.config/antigen/bundles/unixorn/autoupdate-antigen.zshplugin /Users/acidineydias/.config/antigen/bundles/MichaelAquilina/zsh-auto-notify /Users/acidineydias/.config/antigen/bundles/zthxxx/jovial /Users/acidineydias/.config/antigen/bundles/zthxxx/zsh-history-enquirer) path+=(/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-completions /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-autosuggestions /Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-history-substring-search /Users/acidineydias/.config/antigen/bundles/unixorn/autoupdate-antigen.zshplugin /Users/acidineydias/.config/antigen/bundles/MichaelAquilina/zsh-auto-notify /Users/acidineydias/.config/antigen/bundles/zthxxx/jovial /Users/acidineydias/.config/antigen/bundles/zthxxx/zsh-history-enquirer)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/acidineydias/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/async_prompt.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/unixorn/autoupdate-antigen.zshplugin/autoupdate-antigen.zsh';
source '/Users/acidineydias/.config/antigen/bundles/MichaelAquilina/zsh-auto-notify/auto-notify.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zthxxx/jovial/jovial.zsh-theme.antigen-compat';
source '/Users/acidineydias/.config/antigen/bundles/zthxxx/jovial/jovial.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zthxxx/zsh-history-enquirer/zsh-history-enquirer.plugin.zsh';
source '/Users/acidineydias/.config/antigen/bundles/zthxxx/zsh-history-enquirer/init.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/unixorn/autoupdate-antigen.zshplugin.git / plugin true' 'https://github.com/MichaelAquilina/zsh-auto-notify.git / plugin true' 'https://github.com/zthxxx/jovial.git / theme true' 'https://github.com/zthxxx/jovial.git / plugin true' 'https://github.com/zthxxx/zsh-history-enquirer.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/async_prompt.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/acidineydias/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-completions//' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-history-substring-search//' '/Users/acidineydias/.antigen/bundles/zsh-users/zsh-history-substring-search///zsh-history-substring-search.plugin.zsh' '/Users/acidineydias/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin//' '/Users/acidineydias/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin///autoupdate-antigen.zsh' '/Users/acidineydias/.antigen/bundles/MichaelAquilina/zsh-auto-notify//' '/Users/acidineydias/.antigen/bundles/MichaelAquilina/zsh-auto-notify///auto-notify.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zthxxx/jovial//' '/Users/acidineydias/.antigen/bundles/zthxxx/jovial///jovial.zsh-theme' '/Users/acidineydias/.antigen/bundles/zthxxx/jovial//' '/Users/acidineydias/.antigen/bundles/zthxxx/jovial///jovial.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zthxxx/zsh-history-enquirer//' '/Users/acidineydias/.antigen/bundles/zthxxx/zsh-history-enquirer///zsh-history-enquirer.plugin.zsh' '/Users/acidineydias/.antigen/bundles/zthxxx/zsh-history-enquirer///init.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
