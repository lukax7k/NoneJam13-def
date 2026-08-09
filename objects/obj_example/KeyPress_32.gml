// Don't transition if already transitioning
if !(instance_exists(obj_room_transition)) {
	
	// Set the variable _next_room to be whichever room we are not currently in
	var _next_room = (room==Room1) ? Room2 : Room1;
	
	// Transition to that room
	// For a list of available transitions see the list of macros in 
	// the script "room_transition".
	room_transition(_next_room, current_transition, 60);
	
}
