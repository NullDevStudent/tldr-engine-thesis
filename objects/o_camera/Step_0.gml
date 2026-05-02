if instance_exists(target) {
    if follow_x {
        if climb_check() {
            var dist = target.x - x_real;
            
            var d = abs(dist / 20);
            d = clamp(d, 0, (d >= 2 ? 5 : 2));
            
            var spd = lerp(.5, 2, d) * sign(dist);
            
            if abs(dist) < .5
                x = target.x;
            else 
                x = x_real + spd;
        }
        else
            x = target.x;
        
        x += offset_x;
        
        x_real = x; // save the real value before confining it
        if confined_on_x
            x = camera_confine_x(x);
    }
    if follow_y {
        if climb_check() {
            var dist = target.y - y_real;
            var spd = lerp(.5, 2, clamp(abs(dist / 20), 0, 1)) * sign(dist);
            
            if abs(dist) < .5
                y = target.y;
            else 
                y = y_real + spd;
        }
        else
            y = target.y;
        
        y += offset_y;
        
        y_real = y; // save the real value before confining it
        if confined_on_y
            y = camera_confine_y(y);
    }
}
else {
    x_real = x;
    y_real = y;
}