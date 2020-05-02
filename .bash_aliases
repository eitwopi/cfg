# image manipulation
alias ascii_art='jp2a'

# Play radio (add more from https://radio.abc.net.au/help/streams if you want)
alias doublej='echo "Playing doublej..."; mplayer -really-quiet -playlist http://www.abc.net.au/res/streaming/audio/mp3/dig_music.pls > /dev/null 2>&1'
alias abc_jazz='echo "Playing ABC Jazz..."; mplayer -really-quiet -playlist http://www.abc.net.au/res/streaming/audio/mp3/abc_jazz.pls > /dev/null 2>&1'
alias abc_classic='echo "Playing ABC Classic..."; mplayer -really-quiet -playlist http://www.abc.net.au/res/streaming/audio/mp3/classic_fm.pls > /dev/null 2>&1'
alias abc_classic2='echo "Playing ABC Classic2..."; mplayer -really-quiet -playlist http://www.abc.net.au/res/streaming/audio/mp3/classic_two.pls > /dev/null 2>&1'
alias sixtiessoul='echo "Playing Sixties Soul..."; mplayer -nocache -afm ffmpeg http://listen.radionomy.com/sixtiessoulradio.m3u > /dev/null 2>&1'
alias sbs_chill='echo "Playing SBS Chill..."; mplayer -nocache -afm ffmpeg https://sbs-hls.streamguys1.com/sbs-web/sbschill/playlist.m3u8 > /dev/null 2>&1'

# venv shortcuts
alias venv_create='python3 -m venv venv'
alias venv_activate='source venv/bin/activate'

# cfg repo
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
