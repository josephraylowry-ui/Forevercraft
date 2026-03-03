# Party Sidebar — Hide (clear sidebar displayslot)
scoreboard objectives setdisplay sidebar
# Kill orphaned party cart (no active parties need it)
kill @e[type=hopper_minecart,tag=ec.pty_cart]
