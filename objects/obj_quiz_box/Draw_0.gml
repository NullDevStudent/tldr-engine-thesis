draw_self(); // Draws the object's sprite in the room

// Optional: Draw a prompt if the player is close
if (!is_active && instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < interact_range) {
        draw_set_halign(fa_center);
        draw_text(x, y - 32, "Press Z to Start");
    }
}
