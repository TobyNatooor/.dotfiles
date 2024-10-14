color1=#1C1C1C;
color2=white;
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
	# mem_used=$(free -h | awk '{print $3}' | head -n 2 | tail -n 1);
	# mem_total=$(free -h | awk '{print $2}' | head -n 2 | tail -n 1);

	### Content of the status bar
	status_bar="";
	# Mem used/total
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+="<span bgcolor='$color1' fgcolor='$color2'>Mem: $mem_used/$mem_total</span>";
	# status_bar+="<span fgcolor='$color1'></span>";
	# status_bar+=" ";
	# Battery
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+="<span bgcolor='$color1' fgcolor='$color2'>$bat_icon  $bat_cap%</span>";
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+=" ";
	# Date
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+="<span bgcolor='$color1' fgcolor='$color2'>󰱆 $date</span>";
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+=" ";
	# Time
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+="<span bgcolor='$color1' fgcolor='$color2'> $time</span>";
	status_bar+="<span fgcolor='$color1'></span>";
	status_bar+=" ";

        echo "$status_bar";

        do sleep 1;
done


