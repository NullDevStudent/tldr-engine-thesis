if (is_active) {
    // Draw your box background and text using the GUI coordinates
    draw_set_color(c_black);
    draw_rectangle(x - 200, y - 150, x + 200, y + 150, false);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(x, y - 100, question_text);

    for (var i = 0; i < array_length(options); i++) {
        var _color = (selected_index == i) ? c_yellow : c_white;
        draw_text_color(x, y - 20 + (i * 30), options[i], _color, _color, _color, _color, 1);
    }
}
