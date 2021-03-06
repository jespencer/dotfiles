# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
#bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec urxvt

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
#bindsym $mod+d exec dmenu_run
bindsym $mod+d exec --no-startup-id rofi -show run
# rofi ssh launcher
 bindsym $mod+Shift+s exec --no-startup-id rofi -show ssh

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
bindsym $mod+x [urgent=latest] focus

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

#workspace switch back to last workspace
workspace_auto_back_and_forth yes
bindsym $mod+z workspace back_and_forth


# workspace variables
set $WS1 1: Term
set $WS2 2: Web
set $WS3 3:
set $WS4 4:
set $WS5 5:
set $WS6 6:
set $WS7 7:
set $WS8 8:
set $WS9 9:
set $WS10 10:

# switch to workspace
bindsym $mod+1 workspace $WS1
bindsym $mod+2 workspace $WS2
bindsym $mod+3 workspace $WS3
bindsym $mod+4 workspace $WS4
bindsym $mod+5 workspace $WS5
bindsym $mod+6 workspace $WS6
bindsym $mod+7 workspace $WS7
bindsym $mod+8 workspace $WS8
bindsym $mod+9 workspace $WS9
bindsym $mod+0 workspace $WS10

# move focused container to workspace
bindsym $mod+Shift+1 move container to $WS1
bindsym $mod+Shift+2 move container to $WS2
bindsym $mod+Shift+3 move container to $WS3
bindsym $mod+Shift+4 move container to $WS4
bindsym $mod+Shift+5 move container to $WS5
bindsym $mod+Shift+6 move container to $WS6
bindsym $mod+Shift+7 move container to $WS7
bindsym $mod+Shift+8 move container to $WS8
bindsym $mod+Shift+9 move container to $WS9
bindsym $mod+Shift+0 move container to $WS10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        #status_command i3status
        #tray_output primary
	position top
        i3bar_command  /usr/bin/i3bar
	status_command /home/jason/bin/i3barconky
#	verbose true
        colors {
          background #303030
          statusline #ffffff

          focused_workspace  #4c7899 #285577 #ffffff
          active_workspace   #333333 #5f676a #ffffff
          inactive_workspace #333333 #222222 #888888
          urgent_workspace   #2f343a #900000 #ffffff
}
}

# Floating Windows
# for_window [class="XTerm"] floating enable
# for_window [class="URxvt"] floating enable
 for_window [class="Thunar"] floating enable
 for_window [class="Nautilus"] floating enable
 for_window [class="GParted"] floating enable
# for_window [class="Gedit"] floating enable
# for_window [class="Deluge"] floating enable
# for_window [class="Filezilla"] floating enable
# for_window [class="File-roller"] floating enable
 for_window [class="Gnome-terminal"] floating enable
# The middle button over a titlebar kills the window
 bindsym --release button2 kill

# # The middle button and a modifer over any part of the window kills the window
 bindsym --whole-window $mod+button2 kill

# # The right button toggles floating
 bindsym button3 floating toggle
 bindsym $mod+button3 floating toggle


#######################################################################
#                                gaps                                 #
#######################################################################

set $gsi 10
set $gso 0

gaps inner $gsi
gaps outer $gso

# use smart gaps
smart_gaps on

# toggle outer gaps
bindsym $mod+control+space gaps outer all set 100
bindsym $mod+shift+control+space gaps outer all set 0

set $mode_gaps Gaps: (o) outer, (i) inner, (0), (1), (2) for presets
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
	bindsym o		mode "$mode_gaps_outer"
	bindsym i		mode "$mode_gaps_inner"
	bindsym 0		gaps inner current set 0; mode "default"
	bindsym 1		gaps inner current set 2; mode "default"
	bindsym 2		gaps inner current set $gsi; mode "default"
	bindsym Return		mode "default"
	bindsym Escape		mode "default"
}
mode "$mode_gaps_inner" {
	bindsym plus  gaps inner current plus 1
	bindsym minus gaps inner current minus 1
	bindsym 0     gaps inner current set 0

	bindsym Shift+plus  gaps inner all plus 5
	bindsym Shift+minus gaps inner all minus 5
	bindsym Shift+0     gaps inner all set 0

	bindsym Return mode "default"
	bindsym Escape mode "default"
}
mode "$mode_gaps_outer" {
	bindsym plus  gaps outer current plus 5
	bindsym minus gaps outer current minus 5
	bindsym 0     gaps outer current set 0

	bindsym Shift+plus  gaps outer all plus 5
	bindsym Shift+minus gaps outer all minus 5
	bindsym Shift+0     gaps outer all set 0

	bindsym Return mode "default"
	bindsym Escape mode "default"
}

exec --no-startup-id xrandr --output DVI-D-0 --mode 1920x1200 --pos 0x0 --rotate normal --output HDMI-0 --off --output DVI-I-1 --off --output DVI-I-0 --off --output DP-1 --off --output DP-0 --mode 2560x1440 --pos 1920x0 --rotate normal

exec --no-startup-id feh --bg-scale ~/Pictures/bg.jpg



# assign apps to workspaces
# assign [class="Firefox"] 1: ff
 assign [class="google-chrome"] 2: Web
#
# #make notifications behave
 for_window [class="Xfce4-notifyd"] floating enable
 for_window [class="Xfce4-notifyd"] border none
 for_window [class="YADWIN"] floating enable
 for_window [class="YADWIN"] border none
 for_window [instance="Download"] floating enable
 for_window [class="Pnmixer"] floating enable
 for_window [window_role="plugin_ui"] floating enable
 for_window [title="Menu Update"] floating enable
 for_window [title="___"] floating enable


