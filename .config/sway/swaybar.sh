color1=#1C1C1C;
color2=#BBBBBB;
while 
        bat_cap=$(cat /sys/class/power_supply/BAT1/capacity);
        bat_icon="";
        if [[ "$bat_cap" -gt 80 ]] then
                bat_icon=;
        elif [[ "$bat_cap" -gt 55 ]] then
                bat_icon=;
        elif [[ "$bat_cap" -gt 30 ]] then
                bat_icon=;
        elif [[ "$bat_cap" -gt 10 ]] then
                bat_icon=;
        else
                bat_icon=;
        fi;
	date=$(date +'%d-%m-%Y');
	time=$(date +'%H:%M:%S');

	### Content of the status bar
	status_bar="";
	# Battery
	status_bar+="<span fgcolor='$color2'>$bat_icon  $bat_cap%</span>";
	status_bar+="   ";
	# Date
	status_bar+="<span fgcolor='$color2'>󰱆 $date</span>";
	status_bar+="   ";
	# Time
	status_bar+="<span fgcolor='$color2'> $time</span>";
	status_bar+=" ";
	# # Battery
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+="<span bgcolor='$color1' fgcolor='$color2'>$bat_icon  $bat_cap%</span>";
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+=" ";
	# # Date
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+="<span bgcolor='$color1' fgcolor='$color2'>󰱆 $date</span>";
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+=" ";
	# # Time
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+="<span bgcolor='$color1' fgcolor='$color2'> $time</span>";
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+=" ";

        echo "$status_bar";

        do sleep 1;
done


