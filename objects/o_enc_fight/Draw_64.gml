var ui_x = 79;
var ui_y = 365;
var party_count = array_length(global.party_names)
var bar_height = (party_count == 4 ? 28 : 38);

for (var i = 0; i < array_length(fighting); ++i) {
    var yy = bar_height * party_get_index(fighting[i]); // 38/28px per member

    // background bars
    draw_sprite_stretched_ext(spr_pixel, 0, ui_x, ui_y + yy, 125, bar_height,
        merge_color(party_getdata(fighting[i], "darkcolor"), c_white, lightup), image_alpha);
    draw_sprite_stretched_ext(spr_pixel, 0, ui_x + 2, ui_y + yy + 2, 125 - 4, bar_height - 4, c_black, image_alpha);

    // colored accent bar
    draw_sprite_stretched_ext(spr_pixel, 0, ui_x + 3, ui_y + yy, 10, bar_height,
        party_getdata(fighting[i], "color"), image_alpha);
    draw_sprite_stretched_ext(spr_pixel, 0, ui_x + 5, ui_y + yy + 2, 6, bar_height - 4, c_black, image_alpha);

    // press icon + portrait
    draw_set_color(c_white);
    draw_sprite_ext(spr_ui_enc_press, 0, ui_x - 33, ui_y + 6 + yy, 1, 1, 0, c_white, image_alpha);
    draw_sprite_ext(party_geticon(fighting[i]), 0, ui_x - 71, ui_y + 10 + yy, 1, 1, 0, c_white, image_alpha);
}