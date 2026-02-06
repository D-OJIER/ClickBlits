draw_self();

var w = 60;
var h = 6;
var xx = x - 30;
var yy = y - 40;

draw_rectangle(xx, yy, xx + w, yy + h, false);

var hpw = (hp / max_hp) * w;
draw_rectangle(xx, yy, xx + hpw, yy + h, false);

draw_text(x - 20, y + 20, "HP: " + string(hp));
