var mmin = infinity;

// store enemy HPs
enemy_hp = array_create_ext(array_length(caller.encounter_data.enemies), function(index) {
    if !enc_enemy_isfighting(index) return 0;
    return caller.encounter_data.enemies[index].hp;
});

// randomize pattern
for (var i = 0; i < array_length(fighting); ++i) {
    var rand = irandom(array_length(fighting) - 1);
    array_push(pattern, rand);
    if rand < mmin mmin = rand;
}

// normalize pattern
for (var i = 0; i < array_length(pattern); ++i) pattern[i] -= mmin;

// create fight sticks with 4-member vertical spacing
var ui_x = 80 + 30*7;
var ui_y = 365;
var spacing = 14*8;
var party_count = array_length(global.party_names)

for (var i = 0; i < array_length(fighting); ++i) {
    var index = party_get_index(fighting[i]);
    var yy = (party_count == 4 ? 28 : 38) * index; // 38/28px vertical spacing per member
    array_push(sticks, instance_create(o_enc_fightstick,
        ui_x + pattern[i] * spacing,
        ui_y + yy + (party_count == 4 ? 14 : 19), // center sticks vertically on bars
        depth - 10,
        {
            order: pattern[i],
            caller: id,
            ecaller: caller,
            index: index,
            ii: i,
            target: fighterselection[i],
            image_index: (party_count == 4 ? 1 : 0)
        }
    ));
}