event_inherited()

var rm = room_first
var index = 0
while room_exists(rm) {
    array_push(item_list, rm)
    
    rm = room_next(rm)
    index ++
}

select = function(_item) {
    instance_destroy()
    music_stop_all()
    audio_play(snd_ui_select)
    
    room_goto(_item)
}
item_name = function(_item, _category, _item_index) {
    return room_get_name(_item)
}

item_blocked = [room_init]
item_categories = [
    {
        name: "test zone",
        keybind: ord("T"),
        color: c_purple,
        items: [
            room_test_main,
            room_test_movement,
            room_test_inventory,
            room_test_cutscene,
            room_test_shops,
            room_test_loopback
        ]
    },
    {
        name: "examples",
        keybind: ord("E"),
        color: c_aqua,
        items: [
            room_ex_dforest,
            room_ex_city,
            room_ex_church,
            room_ex_light_world,
            room_ex_multi_path,
        ]
    },
	{
		name: "quiz",
		keybind: ord("Q"),
		color: c_orange,
		items: [
			room_scenario,
			room_quiz_1,
			room_quiz_1_sub_1,
			room_quiz_1_sub_2,
			room_quiz_1_sub_3,
			room_quiz_1_sub_4,
			room_quiz_1_sub_5,
			room_quiz_2,
			room_quiz_2_sub_1,
			room_quiz_2_sub_2,
			room_quiz_2_sub_3,
			room_quiz_2_sub_4,
			room_quiz_2_sub_5,
			room_quiz_3,
			room_quiz_3_sub_1,
			room_quiz_3_sub_2,
			room_quiz_3_sub_3,
			room_quiz_3_sub_4,
			room_quiz_3_sub_5,
		]
	}
]
sort_items()