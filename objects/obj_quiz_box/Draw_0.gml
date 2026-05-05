// obj_quiz_box - Draw Event
draw_self();

if (!is_active && instance_exists(o_dev_playermarker)) { // Updated Name
    if (point_distance(x, y, o_dev_playermarker.x, o_dev_playermarker.y) < interact_range) {
        draw_set_halign(fa_center);
        draw_text(x, y - 32, "Press Z to Start");
    }
}
